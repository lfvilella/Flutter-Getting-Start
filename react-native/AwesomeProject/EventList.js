import React, { Component } from 'react';
import { FlatList, StyleSheet } from 'react-native';
import ActionButton from 'react-native-action-button';

import EventCard from './EventCard';
import { getEvents } from './api';


class EventList extends Component {
  state = {
    events: []
  }

  componentDidMount() {
    setInterval(() => {
      this.setState({
        events: this.state.events.map(evt => ({
          ...evt,
          timer: Date.now(),
        })),
      });
    }, 1000);

    const unsubscribe = this.props.navigation.addListener('focus', () => {
      getEvents().then(events => this.setState({ events }));
    });
  }

  handleAddEvent = () => {
    this.props.navigation.navigate('EventForm')
  }

  render() {
    return [
      <FlatList
        key='flatlist'
        style={styles.list}
        data={this.state.events}
        renderItem={({ item }) => <EventCard event={item} />}
        keyExtractor={item => item.id}
      />,

      <ActionButton
        key='fab'
        buttonColor="rgba(231, 76, 60, 1)"
        onPress={this.handleAddEvent}
      />,
    ];
  }
}

export default EventList;


const styles = StyleSheet.create({
  list: {
    flex: 1,
    paddingTop: 20,
    backgroundColor: '#F3F3F3',
  },
});

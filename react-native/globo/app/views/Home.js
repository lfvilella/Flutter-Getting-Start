import React from 'react';
import { View, StyleSheet, TouchableOpacity, Text } from 'react-native';
import Header from '../sections/Header.js';
import Hero from '../sections/Hero.js';
import Menu from '../sections/Menu.js';


export default class Home extends React.Component {
  onPress = () => {
    Alert.alert('You tapped the button!');
  }

  render() {
    const { navigate } = this.props.navigation;
    return (
      <View style={styles.container}>
        <Header navigate={navigate} message='Press to Login' />
        <Hero />
        <Menu navigate={navigate} />
      </View>
    );
  }
}


const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

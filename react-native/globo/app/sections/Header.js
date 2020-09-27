import React from 'react';
import { StyleSheet, Text, View, Image, Platform, AsyncStorage, Alert } from 'react-native';

export default class Header extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      isLoggedIn: false,
      loggedUser: false
    };
  }

  toggleUser = () => {
    if (this.state.isLoggedIn) {
      AsyncStorage.setItem('userLoggedIn', 'none', (err, result) => {
        this.setState({
          isLoggedIn: false,
          loggedUser: false
        });
        Alert.alert('User logged out');
      });
    }
    else {
      this.props.navigate('routeLogin');
    }
  }

  componentDidMount() {
    AsyncStorage.getItem('userLoggedIn', (err, result) => {
      if (result === 'none') {
        console.log('None');
      }
      else if (result === null) {
        AsyncStorage.setItem('userLoggedIn', 'none', (err, result) => {
          console.log('Set user to NONE');
        });
      }
      else {
        this.state({
          isLoggedIn: true,
          loggedUser: result
        });
      }
    });
  }

  render() {
    let display = this.state.isLoggedIn ? this.state.loggedUser : this.props.message;
    return (
      <View style={styles.headStyle}>
        <Image
          style={styles.logoStyle}
          source={require('./img/googleLogo.png')}
        />
        <Text
          style={styles.headText}
          onPress={this.toggleUser}>{display}
        </Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  headText: {
    textAlign: 'right',
    color: '#ffffff',
    fontSize: 20,
    flex: 1,
  },
  headStyle: {
    paddingTop: 50,
    paddingRight: 10,
    backgroundColor: Platform.OS === 'android' ? '#31e981' : '#35605a',
    flex: Platform.OS === 'ios' ? 1 : 2,
    flexDirection: 'row',
    borderBottomWidth: 2,
    borderColor: '#000000',
  },
  logoStyle: {
    flex: 1,
    width: undefined,
    height: undefined,
  }
});

import React from 'react';
import { StyleSheet, TouchableOpacity, View, Text, Alert } from 'react-native';


export default class Menu extends React.Component {
  onPress = () => {
    Alert.alert('You tapped the button!');
  }

  goToContact = () => {
    this.props.navigate('routeContact');
  }

  goToLessons = () => {
    this.props.navigate('routeVideo');
  }

  goToRegister = () => {
    this.props.navigate('routeRegister');
  }

  goToQuiz = () => {
    this.props.navigate('routeQuiz');
  }

  goToAbout = () => {
    this.props.navigate('routeAbout');
  }

  render() {
    return (
      <View style={styles.containerMenu}>
        <View style={styles.buttonRow}>
          <TouchableOpacity style={styles.buttonStyles} onPress={this.goToLessons}>
            <Text style={styles.buttonText}>LESSONS</Text>
          </TouchableOpacity>
          <TouchableOpacity style={styles.buttonStyles} onPress={this.goToRegister}>
            <Text style={styles.buttonText}>REGISTER</Text>
          </TouchableOpacity>
        </View>

        <View style={styles.buttonRow}>
          <TouchableOpacity style={styles.buttonStyles} onPress={this.onPress}>
            <Text style={styles.buttonText}>BLOG</Text>
          </TouchableOpacity>
          <TouchableOpacity style={styles.buttonStyles} onPress={this.goToContact}>
            <Text style={styles.buttonText}>CONTACT</Text>
          </TouchableOpacity>
        </View>

        <View style={styles.buttonRow}>
          <TouchableOpacity style={styles.buttonStyles} onPress={this.goToQuiz}>
            <Text style={styles.buttonText}>QUIZ</Text>
          </TouchableOpacity>
          <TouchableOpacity style={styles.buttonStyles} onPress={this.goToAbout}>
            <Text style={styles.buttonText}>ABOUT</Text>
          </TouchableOpacity>
        </View>
      </View>
    );
  }
}


const styles = StyleSheet.create({
  containerMenu: {
    flex: 6,
    backgroundColor: Platform.OS === 'android' ? '#31e981' : '#35605a',
  },
  buttonRow: {
    flex: 2,
    flexDirection: 'row',
    alignItems: 'center',
    borderColor: '#ffffff',
    borderBottomWidth: 1,
  },
  buttonStyles: {
    backgroundColor: Platform.OS === 'android' ? '#31e981' : '#35605a',
    width: '50%',
    height: '50%',
    justifyContent: 'center',
    alignItems: 'center',
  },
  buttonText: {
    color: '#ffffff',
    fontSize: 18,
  },
})

import React from 'react';
import { StyleSheet, Image } from 'react-native';


export default class Hero extends React.Component {
  render() {
    return (
      <Image
        style={styles.heroImage}
        source={require('./img/business.jpg')}
      />
    );
  }
}


const styles = StyleSheet.create({
  heroImage: {
    width: undefined,
    height: undefined,
    flex: 8
  }
})

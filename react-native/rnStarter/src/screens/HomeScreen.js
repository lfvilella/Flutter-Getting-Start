import React from 'react';
import { Text, StyleSheet, View, Button, TouchableOpacity } from 'react-native';


const HomeScreen = ({ navigation }) => {
  return (
    <View>
      <Text style={styles.text}>Hi there!</Text>
      <Button
        onPress={() => navigation.navigate('Components')}
        title="Go to Components Demo"
      />

      <Button
        title="Go to List Demo"
        onPress={() => navigation.navigate('List')}
      />

      <TouchableOpacity
        style={styles.button}
        onPress={() => navigation.navigate('Image')}
      >
        <Text style={styles.buttonText}>Go to Image Demo</Text>
      </TouchableOpacity>

      <Button
        title="Go to Counter Demo"
        onPress={() => navigation.navigate('Counter')}
      />

      <Button
        title="Go to Color Demo"
        onPress={() => navigation.navigate('Color')}
      />

      <Button
        title="Go to Square Demo"
        onPress={() => navigation.navigate('Square')}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  text: {
    fontSize: 30
  },
  button: {
    backgroundColor: 'black',
    width: '60%',
    alignSelf: 'center',
    padding: 10
  },
  buttonText: {
    fontSize: 16,
    fontWeight: 'bold',
    textAlign: 'center',
    color: 'white'
  }
});

export default HomeScreen;

import React from 'react';
import { Text, View, StyleSheet, TouchableHighlight } from 'react-native';



export function Finish({ route, navigation }) {
  let { score } = route.params;
  let { missed } = route.params;
  let { questions } = route.params;

  return (
    <View style={styles.container}>
      <Text>Your quiz score was {score}</Text>
      <Text>You missed on {missed} out of {questions} questions</Text>

      <TouchableHighlight onPress={() => navigation.navigate('routeHome')} style={styles.button}>
        <Text>Finish Quiz</Text>
      </TouchableHighlight>
    </View>
  )
}


const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    paddingTop: 30,
  },
  buttons: {
    alignItems: 'center',
    justifyContent: 'center',
    height: '10%',
  },
})

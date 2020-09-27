import * as React from 'react';
import { Button, View, Text } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';

import EventList from './EventList';
import EventForm from './EventForm';

import { YellowBox } from 'react-native';

YellowBox.ignoreWarnings([
  'Warning: componentWillMount is deprecated',
  'Warning: componentWillReceiveProps is deprecated',
]);


const Stack = createStackNavigator();

function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen
          name="EventList"
          component={EventList}
        />
        <Stack.Screen
          name="EventForm"
          component={EventForm}
          options={{ title: 'Add an Event' }}
        />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

export default App;

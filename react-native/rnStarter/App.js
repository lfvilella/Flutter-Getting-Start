import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import HomeScreen from './src/screens/HomeScreen.js';
import ComponentsScreen from './src/screens/ComponentsScreen.js';
import ListScreen from './src/screens/ListScreen.js';
import ImageScreen from './src/screens/ImageScreen.js';
import CounterScreen from './src/screens/CounterScreen.js';
import ColorScreen from './src/screens/ColorScreen.js';
import SquareScreen from './src/screens/SquareScreen.js';
import SquareScreenWithReducer from './src/screens/SquareScreenWithReducer.js';


const Stack = createStackNavigator();

function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen
          name="Home"
          component={HomeScreen}
        />
        <Stack.Screen
          name="Components"
          component={ComponentsScreen}
        />
        <Stack.Screen
          name="List"
          component={ListScreen}
        />
        <Stack.Screen
          name="Image"
          component={ImageScreen}
        />
        <Stack.Screen
          name="Counter"
          component={CounterScreen}
        />
        <Stack.Screen
          name="Color"
          component={ColorScreen}
        />

        <Stack.Screen
          name="Square"
          component={SquareScreen}
        />

        <Stack.Screen
          name="SquareReducer"
          component={SquareScreenWithReducer}
        />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

export default App;

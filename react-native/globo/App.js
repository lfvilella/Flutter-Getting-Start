import React from 'react';
import Home from './app/views/Home';
import Contact from './app/views/Contact';

import { Video } from './app/views/Video.js';
import { VideoDetail } from './app/views/VideoDetail.js';
import { Register } from './app/views/Register.js';
import { Login } from './app/views/Login.js';

import { Quiz } from './app/views/Quiz.js';
import { Finish } from './app/views/QuizFinish.js';

import { About } from './app/views/About.js';

import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';


const Stack = createStackNavigator();


export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator
        screenOptions={{ headerShown: false }}
      >
        <Stack.Screen
          name="routeHome"
          component={Home}
        />
        <Stack.Screen
          name="routeContact"
          component={Contact}
        />
        <Stack.Screen
          name="routeLogin"
          component={Login}
        />
        <Stack.Screen
          name="routeRegister"
          component={Register}
        />
        <Stack.Screen
          name="routeVideo"
          component={Video}
        />
        <Stack.Screen
          name="routeVideoDetail"
          component={VideoDetail}
        />
        <Stack.Screen
          name="routeQuiz"
          component={Quiz}
        />
        <Stack.Screen
          name="routeFinish"
          component={Finish}
        />
        <Stack.Screen
          name="routeAbout"
          component={About}
        />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

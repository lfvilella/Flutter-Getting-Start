import React, { useState } from 'react';
import { View, Text, TextInput, StyleSheet } from 'react-native';
import ColorCounter from '../components/ColorCounter'


const COLOR_INCREMENT = 15;

const SquareScreen = () => {
    const [red, setRed] = useState(0);
    const [green, setGreen] = useState(0);
    const [blue, setBlue] = useState(0);

    const setColor = (color, changeIncrement) => {
        if (changeIncrement < 0 || changeIncrement > 255) {
            return;
        }

        switch (color) {
            case 'red':
                return setRed(changeIncrement);
            case 'green':
                return setGreen(changeIncrement);
            case 'blue':
                return setBlue(changeIncrement);
        }
    };

    return <View>
        <ColorCounter
            onIncrease={() => setColor('red', red + COLOR_INCREMENT)}
            onDecrease={() => setColor('red', red - COLOR_INCREMENT)}
            color="Red"
        />
        <ColorCounter
            onIncrease={() => setColor('blue', blue + COLOR_INCREMENT)}
            onDecrease={() => setColor('blue', blue - COLOR_INCREMENT)}
            color="Blue"
        />
        <ColorCounter
            onIncrease={() => setColor('green', green + COLOR_INCREMENT)}
            onDecrease={() => setColor('green', green - COLOR_INCREMENT)}
            color="Green"
        />
        <View
            style={{
                height: 150,
                width: 150,
                backgroundColor: `rgb(${red}, ${green}, ${blue})`
            }}
        />
    </View>
}

const styles = StyleSheet.create({});

export default SquareScreen;

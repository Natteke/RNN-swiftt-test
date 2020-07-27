/**
 * @format
 */

import App from './App';
import {Navigation} from 'react-native-navigation';

// AppRegistry.registerComponent("RNHighScores", () => App);

Navigation.registerComponent('HighScores', () => App);
Navigation.events().registerAppLaunchedListener(() => {
    Navigation.setRoot({
        root: {
            stack: {
                children: [
                    {
                        component: {
                            name: 'HighScores',
                            options: {
                                topBar: {
                                    title: {
                                        text: 'Scooter',
                                    },
                                },
                            },
                        },
                    },
                ],
            },
        },
    });
});

/*
 * @Descripttion: 
 * @version: 
 * @Author: Marlon
 * @Date: 2019-08-18 13:40:23
 * @LastEditors: Marlon
 * @LastEditTime: 2019-08-18 13:44:42
 */
import React, { Component } from 'react';
import { Text, View } from 'react-native';

export default class HelloWorldApp extends Component {
  render() {
    return (
      <View style={{ flex: 1, justifyContent: "center", alignItems: "center" }}>
        <Text>Hello, world!</Text>
      </View>
    );
  }
}
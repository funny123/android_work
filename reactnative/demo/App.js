/* jshint esversion: 6 */
/*
 * @Descripttion:
 * @version:
 * @Author: Marlon
 * @Date: 2019-08-17 10:55:18
 * @LastEditors: Marlon
 * @LastEditTime: 2019-08-17 22:56:13
 */
import React, { Component } from 'react';
import { Text, View } from 'react-native';
import ToastExample from "./ToastExample";

export default class HelloWorldApp extends Component {

  render() {
    // ToastExample.show("马先生1122888", ToastExample.LONG);
    return (
      <View style={{ flex: 1, justifyContent: "center", alignItems: "center" }}>
        <Text>Hello, world1122!</Text>
      </View>
    );
  }
}
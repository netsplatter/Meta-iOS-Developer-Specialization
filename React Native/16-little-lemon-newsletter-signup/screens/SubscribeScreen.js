import React, { useState } from 'react';
import { View, Text, Image, Pressable, StyleSheet, TextInput, Alert } from 'react-native';
import { validateEmail } from '../utils';

const SubscribeScreen = () => {
  const [email, onChangeEmail] = useState('');
  const subscribeAlert = () => 
    Alert.alert(
      "Thanks for subscribing, stay tuned!",
      "",
      { text: "OK" }
    );

  return (
    <View style={styles.container}>
      <View style={styles.headerWrapper}>
        <Image
          style={styles.image}
          source={require('../img/logo.png')}
          resizeMode="contain"
          accessible={true}
          accessibilityLabel={'Little Lemon Logo'}
        />
      </View>
      <Text style={styles.regularText}>
        Subscribe to our newsletter for our latest delicious recipes!
      </Text>
      <TextInput
        style={styles.inputBox}
        value={email}
        onChangeText={onChangeEmail}
        placeholder={'Type your email'}
      />
      <Pressable 
        onPress={subscribeAlert}
        disabled={!validateEmail(email)}
        style={[
          styles.button,
          { backgroundColor: validateEmail(email) ? '#495E57' : "#777" }
        ]}>
        <Text style={styles.buttonText}>Subscribe</Text>
      </Pressable>
    </View>
  );
};

//{ backgroundColor: ValidateEmail(email) ? '#495E57' : "#000" }
export default SubscribeScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
  },
  headerWrapper: {
    flexDirection: 'row',
    justifyContent: 'center',
    margin: 10
  },
  headerText: {
    paddingRight: 10,
    paddingLeft: 20,
    paddingTop: 30,
    paddingBottom: 10,
    fontSize: 30,
    color: '#495E57',
    textAlign: 'center'
  },
  regularText: {
    fontSize: 24,
    fontWeight: '500',
    padding: 20,
    marginVertical: 10,
    color: '#495E57',
    textAlign: 'center'
  },
  image: {
    tintColor: "#495E57",
    width: 100,
    height: 100,
    borderRadius: 20,
    marginTop: 20
  },
  inputBox: {
    height: 40,
    margin: 12,
    borderWidth: 1,
    borderRadius: 10,
    padding: 10,
    fontSize: 16,
    borderColor: '495E57',
    backgroundColor: '#EDEFEE',
  },
  button: {
    padding: 10,
    marginVertical: 8,
    margin: 10,
    borderColor: '#333',
    borderWidth: 2,
    borderRadius: 10
  },
  buttonText: {
    color: '#fff',
    textAlign: 'center',
    fontSize: 18
  }
});
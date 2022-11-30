import * as React from 'react';
import { View, Text, Image, Pressable, StyleSheet } from 'react-native';

const WelcomeScreen = ({ navigation }) => {
  return (
    <View style={styles.mainContainer}>
      <View style={styles.container}>
        <View style={styles.headerWrapper}>
          <Text style={styles.headerText}>LITTLE</Text>
          <Image
            style={styles.image}
            source={require('../img/logo.png')}
            resizeMode="contain"
            accessible={true}
            accessibilityLabel={'Little Lemon Logo'}
          />
          <Text style={styles.headerText}>LEMON</Text>
        </View>
        <Text style={styles.regularText}>
          A charming neighborhood bistro that serves simple food
          and classic cocktails in a lively but casual environment.
        </Text>
      </View>
      <Pressable onPress={() => navigation.navigate("Subscribe")} style={styles.button}>
        <Text style={styles.buttonText}>Newsletter</Text>
      </Pressable>
    </View>
  );
};

export default WelcomeScreen;

const styles = StyleSheet.create({
  mainContainer: {
    flex: 1,
    backgroundColor: '#fff',
  },
  container: {
    flex: 1,
    justifyContent: 'center',
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
    width: 100,
    height: 100,
    borderRadius: 20
  },
  button: {
    padding: 10,
    marginVertical: 8,
    margin: 10,
    marginBottom: 60,
    backgroundColor: '#495E57',
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
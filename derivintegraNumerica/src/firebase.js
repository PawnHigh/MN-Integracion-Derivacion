import firebase from "firebase/app"
import 'firebase/firestore'
import 'firebase/auth'

var firebaseConfig = {
  apiKey: "AIzaSyAkdCuJo8GrXIbJZqhxULlYOMgwk-VaoO8",
  authDomain: "mn-deriva-integra.firebaseapp.com",
  databaseURL: "https://mn-deriva-integra.firebaseio.com",
  projectId: "mn-deriva-integra",
  storageBucket: "mn-deriva-integra.appspot.com",
  messagingSenderId: "327116363495",
  appId: "1:327116363495:web:8731562e6c1d693b44f442",
  measurementId: "G-V6FD2MDD21"
};

// Initialize Firebase

const fb = firebase.initializeApp(firebaseConfig)

export const auth = firebase.auth()
export const googleProvider = new firebase.auth.GoogleAuthProvider()

export const db = fb.firestore()
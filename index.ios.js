import {
  NativeModules,
} from 'react-native';

export default {
  move: (fromPath, toPath) =>
    new Promise((resolve, reject) =>
      NativeModules.FileMover.move(fromPath, toPath, resolve, reject)),
};

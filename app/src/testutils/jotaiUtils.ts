// noinspection ES6PreferShortImport
import { defaultStore } from '../store/defaultStore';
import { Atom } from 'jotai';

export function wrap<T>(atom: Atom<T>) {
  return {
    get value() {
      return defaultStore.get(atom);
    },
  };
}

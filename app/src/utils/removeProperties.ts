export function removeProperties(properties: string[]) {
  return {
    from<T extends object>(object: T) {
      const objectToReturn = { ...object };
      for (const prop of properties) {
        if (prop in objectToReturn) {
          // eslint-disable-next-line @typescript-eslint/ban-ts-comment
          // @ts-ignore
          delete objectToReturn[prop];
        }
      }
      return objectToReturn;
    },
  };
}

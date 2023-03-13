type TestComponentProps = {
  doit: boolean;
};

export function TestComponent({ doit }: TestComponentProps) {
  if (doit) {
    return <h1>doing it</h1>;
  }
  return <h1>not doing it</h1>;
}

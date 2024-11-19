/// <reference types="bun-types" />

declare global {
  const Bun: {
    file(path: string): { text(): Promise<string> };
    write(path: string, content: string): Promise<void>;
    mkdir(path: string, options?: { recursive?: boolean }): Promise<void>;
    spawn(
      cmd: string[],
      options?: { stdio: Array<'inherit' | 'pipe'> }
    ): { kill(): void; exited: Promise<number> };
  }
}

export {}; 
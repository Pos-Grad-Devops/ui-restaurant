// scripts/set-env.ts
import { writeFileSync } from 'fs';
import { resolve } from 'path';

const targetPath = resolve('./src/app/enviroments/enviroments.ts');

const envConfigFile = `
export const environment = {
  production: false,
  apiUrl: '${process.env.API_URL || 'http://localhost:3333'}'
};
`;

writeFileSync(targetPath, envConfigFile);
console.log(`Arquivo de ambiente criado: ${targetPath}`);

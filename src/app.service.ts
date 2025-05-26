import { Injectable, Logger } from '@nestjs/common';
import { DataSource } from 'typeorm';

@Injectable()
export class AppService {
  private readonly logger = new Logger(AppService.name);

  constructor(private readonly dataSource: DataSource) {}

  async getHello(): Promise<string> {
    try {
      // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
      const tables = await this.dataSource.query('SHOW TABLES');
      console.log(`Tables in database: ${JSON.stringify(tables)}`);
    } catch (error) {
      console.error('Failed to connect to DB or fetch tables:', error);
    }

    return 'Hello World!';
  }
}

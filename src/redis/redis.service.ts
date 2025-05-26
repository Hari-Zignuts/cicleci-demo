import { Injectable, OnModuleInit } from '@nestjs/common';
import Redis, { Cluster } from 'ioredis';

@Injectable()
export class RedisService implements OnModuleInit {
  private redisCluster: Cluster;

  onModuleInit() {
    this.redisCluster = new Redis.Cluster([
      {
        host: 'localhost',
        port: 7001,
      },
    ]);

    this.redisCluster.on('connect', () => {
      console.log('Connected to Redis');
    });

    this.redisCluster.on('error', (err) => {
      console.error('Redis connection error:', err);
    });
  }
}

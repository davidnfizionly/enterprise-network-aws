#!/bin/bash
# Enable VPC Flow Logs
aws ec2 create-flow-logs \
  --resource-type VPC \
  --resource-id <VPC_ID> \
  --traffic-type ALL \
  --log-group-name VPCFlowLogs \
  --deliver-logs-permission-arn <IAM_ROLE_ARN>

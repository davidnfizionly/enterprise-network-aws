#!/bin/bash
# Analyze VPC Flow Logs for blocked traffic
aws logs filter-log-events \
  --log-group-name VPCFlowLogs \
  --filter-pattern "REJECT"

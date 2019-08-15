package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.U3DExpRecord;

public interface U3DExpRecordService {
    ServerResponse<String> add(U3DExpRecord expRecord);

    ServerResponse<U3DExpRecord> findByExpId(Integer experimentId);
}

package com.simtop.dao;

import com.simtop.pojo.U3DExpRecord;

public interface U3DExpRecordDao {
    int insertExpRecord(U3DExpRecord expRecord);

    U3DExpRecord findById(Integer experimentId);
}

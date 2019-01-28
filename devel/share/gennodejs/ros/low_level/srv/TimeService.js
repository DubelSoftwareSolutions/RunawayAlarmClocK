// Auto-generated. Do not edit!

// (in-package low_level.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TimeServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Request = null;
    }
    else {
      if (initObj.hasOwnProperty('Request')) {
        this.Request = initObj.Request
      }
      else {
        this.Request = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimeServiceRequest
    // Serialize message field [Request]
    bufferOffset = _serializer.string(obj.Request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeServiceRequest
    let len;
    let data = new TimeServiceRequest(null);
    // Deserialize message field [Request]
    data.Request = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Request.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'low_level/TimeServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9addc784348d4dbc78ae9dca17da0d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Request
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimeServiceRequest(null);
    if (msg.Request !== undefined) {
      resolved.Request = msg.Request;
    }
    else {
      resolved.Request = ''
    }

    return resolved;
    }
};

class TimeServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.TimeNow = null;
      this.DateNow = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('TimeNow')) {
        this.TimeNow = initObj.TimeNow
      }
      else {
        this.TimeNow = '';
      }
      if (initObj.hasOwnProperty('DateNow')) {
        this.DateNow = initObj.DateNow
      }
      else {
        this.DateNow = '';
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimeServiceResponse
    // Serialize message field [TimeNow]
    bufferOffset = _serializer.string(obj.TimeNow, buffer, bufferOffset);
    // Serialize message field [DateNow]
    bufferOffset = _serializer.string(obj.DateNow, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.duration(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeServiceResponse
    let len;
    let data = new TimeServiceResponse(null);
    // Deserialize message field [TimeNow]
    data.TimeNow = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [DateNow]
    data.DateNow = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.TimeNow.length;
    length += object.DateNow.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'low_level/TimeServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b92d4bc1f43e333b6254e84d0122aa0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string TimeNow
    string DateNow
    duration timestamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimeServiceResponse(null);
    if (msg.TimeNow !== undefined) {
      resolved.TimeNow = msg.TimeNow;
    }
    else {
      resolved.TimeNow = ''
    }

    if (msg.DateNow !== undefined) {
      resolved.DateNow = msg.DateNow;
    }
    else {
      resolved.DateNow = ''
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = {
  Request: TimeServiceRequest,
  Response: TimeServiceResponse,
  md5sum() { return '87ba0ebb6660fa9f2267d4d35e953e92'; },
  datatype() { return 'low_level/TimeService'; }
};

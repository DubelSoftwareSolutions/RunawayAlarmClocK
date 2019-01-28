// Auto-generated. Do not edit!

// (in-package low_level.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class I2C_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SharpFrontLeft = null;
      this.SharpFrontRight = null;
      this.SharpTop = null;
      this.KtirBottom = null;
    }
    else {
      if (initObj.hasOwnProperty('SharpFrontLeft')) {
        this.SharpFrontLeft = initObj.SharpFrontLeft
      }
      else {
        this.SharpFrontLeft = 0;
      }
      if (initObj.hasOwnProperty('SharpFrontRight')) {
        this.SharpFrontRight = initObj.SharpFrontRight
      }
      else {
        this.SharpFrontRight = 0;
      }
      if (initObj.hasOwnProperty('SharpTop')) {
        this.SharpTop = initObj.SharpTop
      }
      else {
        this.SharpTop = 0;
      }
      if (initObj.hasOwnProperty('KtirBottom')) {
        this.KtirBottom = initObj.KtirBottom
      }
      else {
        this.KtirBottom = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type I2C_msg
    // Serialize message field [SharpFrontLeft]
    bufferOffset = _serializer.uint16(obj.SharpFrontLeft, buffer, bufferOffset);
    // Serialize message field [SharpFrontRight]
    bufferOffset = _serializer.uint16(obj.SharpFrontRight, buffer, bufferOffset);
    // Serialize message field [SharpTop]
    bufferOffset = _serializer.uint16(obj.SharpTop, buffer, bufferOffset);
    // Serialize message field [KtirBottom]
    bufferOffset = _serializer.uint16(obj.KtirBottom, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type I2C_msg
    let len;
    let data = new I2C_msg(null);
    // Deserialize message field [SharpFrontLeft]
    data.SharpFrontLeft = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SharpFrontRight]
    data.SharpFrontRight = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SharpTop]
    data.SharpTop = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [KtirBottom]
    data.KtirBottom = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'low_level/I2C_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90409038824ffc2a00007388b5d017cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 SharpFrontLeft
    uint16 SharpFrontRight
    uint16 SharpTop
    uint16 KtirBottom
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new I2C_msg(null);
    if (msg.SharpFrontLeft !== undefined) {
      resolved.SharpFrontLeft = msg.SharpFrontLeft;
    }
    else {
      resolved.SharpFrontLeft = 0
    }

    if (msg.SharpFrontRight !== undefined) {
      resolved.SharpFrontRight = msg.SharpFrontRight;
    }
    else {
      resolved.SharpFrontRight = 0
    }

    if (msg.SharpTop !== undefined) {
      resolved.SharpTop = msg.SharpTop;
    }
    else {
      resolved.SharpTop = 0
    }

    if (msg.KtirBottom !== undefined) {
      resolved.KtirBottom = msg.KtirBottom;
    }
    else {
      resolved.KtirBottom = 0
    }

    return resolved;
    }
};

module.exports = I2C_msg;

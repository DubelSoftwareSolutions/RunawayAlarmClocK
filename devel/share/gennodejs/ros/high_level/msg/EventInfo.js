// Auto-generated. Do not edit!

// (in-package high_level.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class EventInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Name = null;
    }
    else {
      if (initObj.hasOwnProperty('Name')) {
        this.Name = initObj.Name
      }
      else {
        this.Name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EventInfo
    // Serialize message field [Name]
    bufferOffset = _serializer.string(obj.Name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EventInfo
    let len;
    let data = new EventInfo(null);
    // Deserialize message field [Name]
    data.Name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'high_level/EventInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cdf8d6bab384a2e7902ca6add60245eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EventInfo(null);
    if (msg.Name !== undefined) {
      resolved.Name = msg.Name;
    }
    else {
      resolved.Name = ''
    }

    return resolved;
    }
};

module.exports = EventInfo;

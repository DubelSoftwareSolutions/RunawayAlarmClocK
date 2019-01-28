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

class LCD_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Text = null;
      this.LineNumber = null;
    }
    else {
      if (initObj.hasOwnProperty('Text')) {
        this.Text = initObj.Text
      }
      else {
        this.Text = '';
      }
      if (initObj.hasOwnProperty('LineNumber')) {
        this.LineNumber = initObj.LineNumber
      }
      else {
        this.LineNumber = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LCD_msg
    // Serialize message field [Text]
    bufferOffset = _serializer.string(obj.Text, buffer, bufferOffset);
    // Serialize message field [LineNumber]
    bufferOffset = _serializer.uint8(obj.LineNumber, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LCD_msg
    let len;
    let data = new LCD_msg(null);
    // Deserialize message field [Text]
    data.Text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [LineNumber]
    data.LineNumber = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Text.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'low_level/LCD_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a002dcffdbe1ff12e490f148af7eb9b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Text
    uint8 LineNumber
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LCD_msg(null);
    if (msg.Text !== undefined) {
      resolved.Text = msg.Text;
    }
    else {
      resolved.Text = ''
    }

    if (msg.LineNumber !== undefined) {
      resolved.LineNumber = msg.LineNumber;
    }
    else {
      resolved.LineNumber = 0
    }

    return resolved;
    }
};

module.exports = LCD_msg;

import 'dart:async' as dart_async;
import 'package:json_rpc_2/json_rpc_2.dart' as json_rpc_2;
// AUTO-GENERATED. DO NOT MODIFY BY HAND.
//
// Chrome DevTools Protocol v1.3

/** Console message. */
class ConsoleMessage {
  /** Message source. */
  String source;

/** Message severity. */
  String level;

/** Message text. */
  String text;

/** URL of the message origin. */
  String url;

/** Line number in the resource that generated this message (1-based). */
  int line;

/** Column number in the resource that generated this message (1-based). */
  int column;

  Map<String, dynamic> toJson() {
    return {
      "source": source,
      "level": level,
      "text": text,
      "url": url,
      "line": line,
      "column": column
    };
  }
}

/**  */
class BreakLocation {
  /** Script identifier as reported in the `Debugger.scriptParsed`. */
  String scriptId;

/** Line number in the script (0-based). */
  int lineNumber;

/** Column number in the script (0-based). */
  int columnNumber;

/**  */
  String type;

  Map<String, dynamic> toJson() {
    return {
      "scriptId": scriptId,
      "lineNumber": lineNumber,
      "columnNumber": columnNumber,
      "type": type
    };
  }
}

/** Search match for resource. */
class SearchMatch {
  /** Line number in resource content. */
  num lineNumber;

/** Line with match content. */
  String lineContent;

  Map<String, dynamic> toJson() {
    return {"lineNumber": lineNumber, "lineContent": lineContent};
  }
}

/** Scope description. */
class Scope {
  /** Scope type. */
  String type;

/** Object representing the scope. For `global` and `with` scopes it represents the actual
object; for the rest of the scopes, it is artificial transient object enumerating scope
variables as its properties. */
  RemoteObject object;

/**  */
  String name;

/** Location in the source code where scope starts */
  Location startLocation;

/** Location in the source code where scope ends */
  Location endLocation;

  Map<String, dynamic> toJson() {
    return {
      "type": type,
      "object": object,
      "name": name,
      "startLocation": startLocation,
      "endLocation": endLocation
    };
  }
}

/** JavaScript call frame. Array of call frames form the call stack. */
class CallFrame {
  /** Call frame identifier. This identifier is only valid while the virtual machine is paused. */
  String callFrameId;

/** Name of the JavaScript function called on this call frame. */
  String functionName;

/** Location in the source code. */
  Location functionLocation;

/** Location in the source code. */
  Location location;

/** JavaScript script name or url. */
  String url;

/** Scope chain for this call frame. */
  List<Scope> scopeChain;

/** `this` object for this call frame. */
  RemoteObject $this;

/** The value being returned, if the function is at return point. */
  RemoteObject returnValue;

  Map<String, dynamic> toJson() {
    return {
      "callFrameId": callFrameId,
      "functionName": functionName,
      "functionLocation": functionLocation,
      "location": location,
      "url": url,
      "scopeChain": scopeChain,
      "this": this,
      "returnValue": returnValue
    };
  }
}

/** Location in the source code. */
class ScriptPosition {
  /**  */
  int lineNumber;

/**  */
  int columnNumber;

  Map<String, dynamic> toJson() {
    return {"lineNumber": lineNumber, "columnNumber": columnNumber};
  }
}

/** Location in the source code. */
class Location {
  /** Script identifier as reported in the `Debugger.scriptParsed`. */
  String scriptId;

/** Line number in the script (0-based). */
  int lineNumber;

/** Column number in the script (0-based). */
  int columnNumber;

  Map<String, dynamic> toJson() {
    return {
      "scriptId": scriptId,
      "lineNumber": lineNumber,
      "columnNumber": columnNumber
    };
  }
}

/** Profile. */
class SamplingHeapProfile {
  /**  */
  SamplingHeapProfileNode head;

  Map<String, dynamic> toJson() {
    return {"head": head};
  }
}

/** Sampling Heap Profile node. Holds callsite information, allocation statistics and child nodes. */
class SamplingHeapProfileNode {
  /** Function location. */
  CallFrame callFrame;

/** Allocations size in bytes for the node excluding children. */
  num selfSize;

/** Child nodes. */
  List<SamplingHeapProfileNode> children;

  Map<String, dynamic> toJson() {
    return {"callFrame": callFrame, "selfSize": selfSize, "children": children};
  }
}

/** Type profile data collected during runtime for a JavaScript script. */
class ScriptTypeProfile {
  /** JavaScript script id. */
  String scriptId;

/** JavaScript script name or url. */
  String url;

/** Type profile entries for parameters and return values of the functions in the script. */
  List<TypeProfileEntry> entries;

  Map<String, dynamic> toJson() {
    return {"scriptId": scriptId, "url": url, "entries": entries};
  }
}

/** Source offset and types for a parameter or return value. */
class TypeProfileEntry {
  /** Source offset of the parameter or end of function for return values. */
  int offset;

/** The types for this parameter or return value. */
  List<TypeObject> types;

  Map<String, dynamic> toJson() {
    return {"offset": offset, "types": types};
  }
}

/** Describes a type collected during runtime. */
class TypeObject {
  /** Name of a type collected with type profiling. */
  String name;

  Map<String, dynamic> toJson() {
    return {"name": name};
  }
}

/** Coverage data for a JavaScript script. */
class ScriptCoverage {
  /** JavaScript script id. */
  String scriptId;

/** JavaScript script name or url. */
  String url;

/** Functions contained in the script that has coverage data. */
  List<FunctionCoverage> functions;

  Map<String, dynamic> toJson() {
    return {"scriptId": scriptId, "url": url, "functions": functions};
  }
}

/** Coverage data for a JavaScript function. */
class FunctionCoverage {
  /** JavaScript function name. */
  String functionName;

/** Source ranges inside the function with coverage data. */
  List<CoverageRange> ranges;

/** Whether coverage data for this function has block granularity. */
  bool isBlockCoverage;

  Map<String, dynamic> toJson() {
    return {
      "functionName": functionName,
      "ranges": ranges,
      "isBlockCoverage": isBlockCoverage
    };
  }
}

/** Coverage data for a source range. */
class CoverageRange {
  /** JavaScript script source offset for the range start. */
  int startOffset;

/** JavaScript script source offset for the range end. */
  int endOffset;

/** Collected execution count of the source range. */
  int count;

  Map<String, dynamic> toJson() {
    return {"startOffset": startOffset, "endOffset": endOffset, "count": count};
  }
}

/** Specifies a number of samples attributed to a certain source position. */
class PositionTickInfo {
  /** Source line number (1-based). */
  int line;

/** Number of samples attributed to the source line. */
  int ticks;

  Map<String, dynamic> toJson() {
    return {"line": line, "ticks": ticks};
  }
}

/** Profile. */
class Profile {
  /** The list of profile nodes. First item is the root node. */
  List<ProfileNode> nodes;

/** Profiling start timestamp in microseconds. */
  num startTime;

/** Profiling end timestamp in microseconds. */
  num endTime;

/** Ids of samples top nodes. */
  List samples;

/** Time intervals between adjacent samples in microseconds. The first delta is relative to the
profile startTime. */
  List timeDeltas;

  Map<String, dynamic> toJson() {
    return {
      "nodes": nodes,
      "startTime": startTime,
      "endTime": endTime,
      "samples": samples,
      "timeDeltas": timeDeltas
    };
  }
}

/** Profile node. Holds callsite information, execution statistics and child nodes. */
class ProfileNode {
  /** Unique id of the node. */
  int id;

/** Function location. */
  CallFrame callFrame;

/** Number of samples where this node was on top of the call stack. */
  int hitCount;

/** Child node ids. */
  List children;

/** The reason of being not optimized. The function may be deoptimized or marked as don't
optimize. */
  String deoptReason;

/** An array of source position ticks. */
  List<PositionTickInfo> positionTicks;

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "callFrame": callFrame,
      "hitCount": hitCount,
      "children": children,
      "deoptReason": deoptReason,
      "positionTicks": positionTicks
    };
  }
}

/** If `debuggerId` is set stack trace comes from another debugger and can be resolved there. This
allows to track cross-debugger calls. See `Runtime.StackTrace` and `Debugger.paused` for usages. */
class StackTraceId {
  /**  */
  String id;

/**  */
  String debuggerId;

  Map<String, dynamic> toJson() {
    return {"id": id, "debuggerId": debuggerId};
  }
}

/** Call frames for assertions or error messages. */
class StackTrace {
  /** String label of this stack trace. For async traces this may be a name of the function that
initiated the async call. */
  String description;

/** JavaScript function name. */
  List<CallFrame> callFrames;

/** Asynchronous JavaScript stack trace that preceded this stack, if available. */
  StackTrace parent;

/** Asynchronous JavaScript stack trace that preceded this stack, if available. */
  StackTraceId parentId;

  Map<String, dynamic> toJson() {
    return {
      "description": description,
      "callFrames": callFrames,
      "parent": parent,
      "parentId": parentId
    };
  }
}

/** Detailed information about exception (or error) that was thrown during script compilation or
execution. */
class ExceptionDetails {
  /** Exception id. */
  int exceptionId;

/** Exception text, which should be used together with exception object when available. */
  String text;

/** Line number of the exception location (0-based). */
  int lineNumber;

/** Column number of the exception location (0-based). */
  int columnNumber;

/** Script ID of the exception location. */
  String scriptId;

/** URL of the exception location, to be used when the script was not reported. */
  String url;

/** JavaScript stack trace if available. */
  StackTrace stackTrace;

/** Exception object if available. */
  RemoteObject exception;

/** Identifier of the context where exception happened. */
  int executionContextId;

  Map<String, dynamic> toJson() {
    return {
      "exceptionId": exceptionId,
      "text": text,
      "lineNumber": lineNumber,
      "columnNumber": columnNumber,
      "scriptId": scriptId,
      "url": url,
      "stackTrace": stackTrace,
      "exception": exception,
      "executionContextId": executionContextId
    };
  }
}

/** Description of an isolated world. */
class ExecutionContextDescription {
  /** Unique id of the execution context. It can be used to specify in which execution context
script evaluation should be performed. */
  int id;

/** Execution context origin. */
  String origin;

/** Human readable name describing given context. */
  String name;

/** Embedder-specific auxiliary data. */
  Map auxData;

  Map<String, dynamic> toJson() {
    return {"id": id, "origin": origin, "name": name, "auxData": auxData};
  }
}

/** Represents function call argument. Either remote object id `objectId`, primitive `value`,
unserializable primitive value or neither of (for undefined) them should be specified. */
class CallArgument {
  /** Primitive value or serializable javascript object. */
  Object value;

/** Primitive value which can not be JSON-stringified. */
  String unserializableValue;

/** Remote object handle. */
  String objectId;

  Map<String, dynamic> toJson() {
    return {
      "value": value,
      "unserializableValue": unserializableValue,
      "objectId": objectId
    };
  }
}

/** Object internal property descriptor. This property isn't normally visible in JavaScript code. */
class InternalPropertyDescriptor {
  /** Conventional property name. */
  String name;

/** The value associated with the property. */
  RemoteObject value;

  Map<String, dynamic> toJson() {
    return {"name": name, "value": value};
  }
}

/** Object property descriptor. */
class PropertyDescriptor {
  /** Property name or symbol description. */
  String name;

/** The value associated with the property. */
  RemoteObject value;

/** True if the value associated with the property may be changed (data descriptors only). */
  bool writable;

/** A function which serves as a getter for the property, or `undefined` if there is no getter
(accessor descriptors only). */
  RemoteObject get;

/** A function which serves as a setter for the property, or `undefined` if there is no setter
(accessor descriptors only). */
  RemoteObject set;

/** True if the type of this property descriptor may be changed and if the property may be
deleted from the corresponding object. */
  bool configurable;

/** True if this property shows up during enumeration of the properties on the corresponding
object. */
  bool enumerable;

/** True if the result was thrown during the evaluation. */
  bool wasThrown;

/** True if the property is owned for the object. */
  bool isOwn;

/** Property symbol object, if the property is of the `symbol` type. */
  RemoteObject symbol;

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "value": value,
      "writable": writable,
      "get": get,
      "set": set,
      "configurable": configurable,
      "enumerable": enumerable,
      "wasThrown": wasThrown,
      "isOwn": isOwn,
      "symbol": symbol
    };
  }
}

/**  */
class EntryPreview {
  /** Preview of the key. Specified for map-like collection entries. */
  ObjectPreview key;

/** Preview of the value. */
  ObjectPreview value;

  Map<String, dynamic> toJson() {
    return {"key": key, "value": value};
  }
}

/**  */
class PropertyPreview {
  /** Property name. */
  String name;

/** Object type. Accessor means that the property itself is an accessor property. */
  String type;

/** User-friendly property value string. */
  String value;

/** Nested value preview. */
  ObjectPreview valuePreview;

/** Object subtype hint. Specified for `object` type values only. */
  String subtype;

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "type": type,
      "value": value,
      "valuePreview": valuePreview,
      "subtype": subtype
    };
  }
}

/** Object containing abbreviated remote object value. */
class ObjectPreview {
  /** Object type. */
  String type;

/** Object subtype hint. Specified for `object` type values only. */
  String subtype;

/** String representation of the object. */
  String description;

/** True iff some of the properties or entries of the original object did not fit. */
  bool overflow;

/** List of the properties. */
  List<PropertyPreview> properties;

/** List of the entries. Specified for `map` and `set` subtype values only. */
  List<EntryPreview> entries;

  Map<String, dynamic> toJson() {
    return {
      "type": type,
      "subtype": subtype,
      "description": description,
      "overflow": overflow,
      "properties": properties,
      "entries": entries
    };
  }
}

/**  */
class CustomPreview {
  /**  */
  String header;

/**  */
  bool hasBody;

/**  */
  String formatterObjectId;

/**  */
  String bindRemoteObjectFunctionId;

/**  */
  String configObjectId;

  Map<String, dynamic> toJson() {
    return {
      "header": header,
      "hasBody": hasBody,
      "formatterObjectId": formatterObjectId,
      "bindRemoteObjectFunctionId": bindRemoteObjectFunctionId,
      "configObjectId": configObjectId
    };
  }
}

/** Mirror object referencing original JavaScript object. */
class RemoteObject {
  /** Object type. */
  String type;

/** Object subtype hint. Specified for `object` type values only. */
  String subtype;

/** Object class (constructor) name. Specified for `object` type values only. */
  String className;

/** Remote object value in case of primitive values or JSON values (if it was requested). */
  Object value;

/** Primitive value which can not be JSON-stringified does not have `value`, but gets this
property. */
  String unserializableValue;

/** String representation of the object. */
  String description;

/** Unique object identifier (for non-primitive values). */
  String objectId;

/** Preview containing abbreviated property values. Specified for `object` type values only. */
  ObjectPreview preview;

/**  */
  CustomPreview customPreview;

  Map<String, dynamic> toJson() {
    return {
      "type": type,
      "subtype": subtype,
      "className": className,
      "value": value,
      "unserializableValue": unserializableValue,
      "description": description,
      "objectId": objectId,
      "preview": preview,
      "customPreview": customPreview
    };
  }
}

/** Description of the protocol domain. */
class Domain {
  /** Domain name. */
  String name;

/** Domain version. */
  String version;

  Map<String, dynamic> toJson() {
    return {"name": name, "version": version};
  }
}

/** A node in the accessibility tree. */
class AXNode {
  /** Unique identifier for this node. */
  String nodeId;

/** Whether this node is ignored for accessibility */
  bool ignored;

/** Collection of reasons why this node is hidden. */
  List<AXProperty> ignoredReasons;

/** This `Node`'s role, whether explicit or implicit. */
  AXValue role;

/** The accessible name for this `Node`. */
  AXValue name;

/** The accessible description for this `Node`. */
  AXValue description;

/** The value for this `Node`. */
  AXValue value;

/** All other properties */
  List<AXProperty> properties;

/** IDs for each of this node's child nodes. */
  List<String> childIds;

/** The backend ID for the associated DOM node, if any. */
  int backendDOMNodeId;

  Map<String, dynamic> toJson() {
    return {
      "nodeId": nodeId,
      "ignored": ignored,
      "ignoredReasons": ignoredReasons,
      "role": role,
      "name": name,
      "description": description,
      "value": value,
      "properties": properties,
      "childIds": childIds,
      "backendDOMNodeId": backendDOMNodeId
    };
  }
}

/** A single computed AX property. */
class AXValue {
  /** The type of this value. */
  String type;

/** The computed value of this property. */
  Object value;

/** One or more related nodes, if applicable. */
  List<AXRelatedNode> relatedNodes;

/** The sources which contributed to the computation of this property. */
  List<AXValueSource> sources;

  Map<String, dynamic> toJson() {
    return {
      "type": type,
      "value": value,
      "relatedNodes": relatedNodes,
      "sources": sources
    };
  }
}

/**  */
class AXProperty {
  /** The name of this property. */
  String name;

/** The value of this property. */
  AXValue value;

  Map<String, dynamic> toJson() {
    return {"name": name, "value": value};
  }
}

/**  */
class AXRelatedNode {
  /** The BackendNodeId of the related DOM node. */
  int backendDOMNodeId;

/** The IDRef value provided, if any. */
  String idref;

/** The text alternative of this node in the current context. */
  String text;

  Map<String, dynamic> toJson() {
    return {"backendDOMNodeId": backendDOMNodeId, "idref": idref, "text": text};
  }
}

/** A single source for a computed AX property. */
class AXValueSource {
  /** What type of source this is. */
  String type;

/** The value of this property source. */
  AXValue value;

/** The name of the relevant attribute, if any. */
  String attribute;

/** The value of the relevant attribute, if any. */
  AXValue attributeValue;

/** Whether this source is superseded by a higher priority source. */
  bool superseded;

/** The native markup source for this value, e.g. a <label> element. */
  String nativeSource;

/** The value, such as a node or node list, of the native source. */
  AXValue nativeSourceValue;

/** Whether the value for this property is invalid. */
  bool invalid;

/** Reason for the value being invalid, if it is. */
  String invalidReason;

  Map<String, dynamic> toJson() {
    return {
      "type": type,
      "value": value,
      "attribute": attribute,
      "attributeValue": attributeValue,
      "superseded": superseded,
      "nativeSource": nativeSource,
      "nativeSourceValue": nativeSourceValue,
      "invalid": invalid,
      "invalidReason": invalidReason
    };
  }
}

/** Keyframe Style */
class KeyframeStyle {
  /** Keyframe's time offset. */
  String offset;

/** `AnimationEffect`'s timing function. */
  String easing;

  Map<String, dynamic> toJson() {
    return {"offset": offset, "easing": easing};
  }
}

/** Keyframes Rule */
class KeyframesRule {
  /** CSS keyframed animation's name. */
  String name;

/** List of animation keyframes. */
  List<KeyframeStyle> keyframes;

  Map<String, dynamic> toJson() {
    return {"name": name, "keyframes": keyframes};
  }
}

/** AnimationEffect instance */
class AnimationEffect {
  /** `AnimationEffect`'s delay. */
  num delay;

/** `AnimationEffect`'s end delay. */
  num endDelay;

/** `AnimationEffect`'s iteration start. */
  num iterationStart;

/** `AnimationEffect`'s iterations. */
  num iterations;

/** `AnimationEffect`'s iteration duration. */
  num duration;

/** `AnimationEffect`'s playback direction. */
  String direction;

/** `AnimationEffect`'s fill mode. */
  String fill;

/** `AnimationEffect`'s target node. */
  int backendNodeId;

/** `AnimationEffect`'s keyframes. */
  KeyframesRule keyframesRule;

/** `AnimationEffect`'s timing function. */
  String easing;

  Map<String, dynamic> toJson() {
    return {
      "delay": delay,
      "endDelay": endDelay,
      "iterationStart": iterationStart,
      "iterations": iterations,
      "duration": duration,
      "direction": direction,
      "fill": fill,
      "backendNodeId": backendNodeId,
      "keyframesRule": keyframesRule,
      "easing": easing
    };
  }
}

/** Animation instance. */
class Animation {
  /** `Animation`'s id. */
  String id;

/** `Animation`'s name. */
  String name;

/** `Animation`'s internal paused state. */
  bool pausedState;

/** `Animation`'s play state. */
  String playState;

/** `Animation`'s playback rate. */
  num playbackRate;

/** `Animation`'s start time. */
  num startTime;

/** `Animation`'s current time. */
  num currentTime;

/** Animation type of `Animation`. */
  String type;

/** `Animation`'s source animation node. */
  AnimationEffect source;

/** A unique ID for `Animation` representing the sources that triggered this CSS
animation/transition. */
  String cssId;

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "pausedState": pausedState,
      "playState": playState,
      "playbackRate": playbackRate,
      "startTime": startTime,
      "currentTime": currentTime,
      "type": type,
      "source": source,
      "cssId": cssId
    };
  }
}

/** Frame identifier - manifest URL pair. */
class FrameWithManifest {
  /** Frame identifier. */
  String frameId;

/** Manifest URL. */
  String manifestURL;

/** Application cache status. */
  int status;

  Map<String, dynamic> toJson() {
    return {"frameId": frameId, "manifestURL": manifestURL, "status": status};
  }
}

/** Detailed application cache information. */
class ApplicationCache {
  /** Manifest URL. */
  String manifestURL;

/** Application cache size. */
  num size;

/** Application cache creation time. */
  num creationTime;

/** Application cache update time. */
  num updateTime;

/** Application cache resources. */
  List<ApplicationCacheResource> resources;

  Map<String, dynamic> toJson() {
    return {
      "manifestURL": manifestURL,
      "size": size,
      "creationTime": creationTime,
      "updateTime": updateTime,
      "resources": resources
    };
  }
}

/** Detailed application cache resource information. */
class ApplicationCacheResource {
  /** Resource url. */
  String url;

/** Resource size. */
  int size;

/** Resource type. */
  String type;

  Map<String, dynamic> toJson() {
    return {"url": url, "size": size, "type": type};
  }
}

/** Chrome histogram. */
class Histogram {
  /** Name. */
  String name;

/** Sum of sample values. */
  int sum;

/** Total number of samples. */
  int count;

/** Buckets. */
  List<Bucket> buckets;

  Map<String, dynamic> toJson() {
    return {"name": name, "sum": sum, "count": count, "buckets": buckets};
  }
}

/** Chrome histogram bucket. */
class Bucket {
  /** Minimum value (inclusive). */
  int low;

/** Maximum value (exclusive). */
  int high;

/** Number of samples. */
  int count;

  Map<String, dynamic> toJson() {
    return {"low": low, "high": high, "count": count};
  }
}

/** Browser window bounds information */
class Bounds {
  /** The offset from the left edge of the screen to the window in pixels. */
  int left;

/** The offset from the top edge of the screen to the window in pixels. */
  int top;

/** The window width in pixels. */
  int width;

/** The window height in pixels. */
  int height;

/** The window state. Default to normal. */
  String windowState;

  Map<String, dynamic> toJson() {
    return {
      "left": left,
      "top": top,
      "width": width,
      "height": height,
      "windowState": windowState
    };
  }
}

/** A descriptor of operation to mutate style declaration text. */
class StyleDeclarationEdit {
  /** The css style sheet identifier. */
  String styleSheetId;

/** The range of the style text in the enclosing stylesheet. */
  SourceRange range;

/** New style text. */
  String text;

  Map<String, dynamic> toJson() {
    return {"styleSheetId": styleSheetId, "range": range, "text": text};
  }
}

/** CSS keyframe rule representation. */
class CSSKeyframeRule {
  /** The css style sheet identifier (absent for user agent stylesheet and user-specified
stylesheet rules) this rule came from. */
  String styleSheetId;

/** Parent stylesheet's origin. */
  String origin;

/** Associated key text. */
  Value keyText;

/** Associated style declaration. */
  CSSStyle style;

  Map<String, dynamic> toJson() {
    return {
      "styleSheetId": styleSheetId,
      "origin": origin,
      "keyText": keyText,
      "style": style
    };
  }
}

/** CSS keyframes rule representation. */
class CSSKeyframesRule {
  /** Animation name. */
  Value animationName;

/** List of keyframes. */
  List<CSSKeyframeRule> keyframes;

  Map<String, dynamic> toJson() {
    return {"animationName": animationName, "keyframes": keyframes};
  }
}

/** Information about amount of glyphs that were rendered with given font. */
class PlatformFontUsage {
  /** Font's family name reported by platform. */
  String familyName;

/** Indicates if the font was downloaded or resolved locally. */
  bool isCustomFont;

/** Amount of glyphs that were rendered with this font. */
  num glyphCount;

  Map<String, dynamic> toJson() {
    return {
      "familyName": familyName,
      "isCustomFont": isCustomFont,
      "glyphCount": glyphCount
    };
  }
}

/** Media query expression descriptor. */
class MediaQueryExpression {
  /** Media query expression value. */
  num value;

/** Media query expression units. */
  String unit;

/** Media query expression feature. */
  String feature;

/** The associated range of the value text in the enclosing stylesheet (if available). */
  SourceRange valueRange;

/** Computed length of media query expression (if applicable). */
  num computedLength;

  Map<String, dynamic> toJson() {
    return {
      "value": value,
      "unit": unit,
      "feature": feature,
      "valueRange": valueRange,
      "computedLength": computedLength
    };
  }
}

/** Media query descriptor. */
class MediaQuery {
  /** Array of media query expressions. */
  List<MediaQueryExpression> expressions;

/** Whether the media query condition is satisfied. */
  bool active;

  Map<String, dynamic> toJson() {
    return {"expressions": expressions, "active": active};
  }
}

/** CSS media rule descriptor. */
class CSSMedia {
  /** Media query text. */
  String text;

/** Source of the media query: "mediaRule" if specified by a @media rule, "importRule" if
specified by an @import rule, "linkedSheet" if specified by a "media" attribute in a linked
stylesheet's LINK tag, "inlineSheet" if specified by a "media" attribute in an inline
stylesheet's STYLE tag. */
  String source;

/** URL of the document containing the media query description. */
  String sourceURL;

/** The associated rule (@media or @import) header range in the enclosing stylesheet (if
available). */
  SourceRange range;

/** Identifier of the stylesheet containing this object (if exists). */
  String styleSheetId;

/** Array of media queries. */
  List<MediaQuery> mediaList;

  Map<String, dynamic> toJson() {
    return {
      "text": text,
      "source": source,
      "sourceURL": sourceURL,
      "range": range,
      "styleSheetId": styleSheetId,
      "mediaList": mediaList
    };
  }
}

/** CSS property declaration data. */
class CSSProperty {
  /** The property name. */
  String name;

/** The property value. */
  String value;

/** Whether the property has "!important" annotation (implies `false` if absent). */
  bool important;

/** Whether the property is implicit (implies `false` if absent). */
  bool implicit;

/** The full property text as specified in the style. */
  String text;

/** Whether the property is understood by the browser (implies `true` if absent). */
  bool parsedOk;

/** Whether the property is disabled by the user (present for source-based properties only). */
  bool disabled;

/** The entire property range in the enclosing style declaration (if available). */
  SourceRange range;

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "value": value,
      "important": important,
      "implicit": implicit,
      "text": text,
      "parsedOk": parsedOk,
      "disabled": disabled,
      "range": range
    };
  }
}

/** CSS style representation. */
class CSSStyle {
  /** The css style sheet identifier (absent for user agent stylesheet and user-specified
stylesheet rules) this rule came from. */
  String styleSheetId;

/** CSS properties in the style. */
  List<CSSProperty> cssProperties;

/** Computed values for all shorthands found in the style. */
  List<ShorthandEntry> shorthandEntries;

/** Style declaration text (if available). */
  String cssText;

/** Style declaration range in the enclosing stylesheet (if available). */
  SourceRange range;

  Map<String, dynamic> toJson() {
    return {
      "styleSheetId": styleSheetId,
      "cssProperties": cssProperties,
      "shorthandEntries": shorthandEntries,
      "cssText": cssText,
      "range": range
    };
  }
}

/**  */
class CSSComputedStyleProperty {
  /** Computed style property name. */
  String name;

/** Computed style property value. */
  String value;

  Map<String, dynamic> toJson() {
    return {"name": name, "value": value};
  }
}

/**  */
class ShorthandEntry {
  /** Shorthand name. */
  String name;

/** Shorthand value. */
  String value;

/** Whether the property has "!important" annotation (implies `false` if absent). */
  bool important;

  Map<String, dynamic> toJson() {
    return {"name": name, "value": value, "important": important};
  }
}

/** Text range within a resource. All numbers are zero-based. */
class SourceRange {
  /** Start line of range. */
  int startLine;

/** Start column of range (inclusive). */
  int startColumn;

/** End line of range */
  int endLine;

/** End column of range (exclusive). */
  int endColumn;

  Map<String, dynamic> toJson() {
    return {
      "startLine": startLine,
      "startColumn": startColumn,
      "endLine": endLine,
      "endColumn": endColumn
    };
  }
}

/** CSS coverage information. */
class RuleUsage {
  /** The css style sheet identifier (absent for user agent stylesheet and user-specified
stylesheet rules) this rule came from. */
  String styleSheetId;

/** Offset of the start of the rule (including selector) from the beginning of the stylesheet. */
  num startOffset;

/** Offset of the end of the rule body from the beginning of the stylesheet. */
  num endOffset;

/** Indicates whether the rule was actually used by some element in the page. */
  bool used;

  Map<String, dynamic> toJson() {
    return {
      "styleSheetId": styleSheetId,
      "startOffset": startOffset,
      "endOffset": endOffset,
      "used": used
    };
  }
}

/** CSS rule representation. */
class CSSRule {
  /** The css style sheet identifier (absent for user agent stylesheet and user-specified
stylesheet rules) this rule came from. */
  String styleSheetId;

/** Rule selector data. */
  SelectorList selectorList;

/** Parent stylesheet's origin. */
  String origin;

/** Associated style declaration. */
  CSSStyle style;

/** Media list array (for rules involving media queries). The array enumerates media queries
starting with the innermost one, going outwards. */
  List<CSSMedia> media;

  Map<String, dynamic> toJson() {
    return {
      "styleSheetId": styleSheetId,
      "selectorList": selectorList,
      "origin": origin,
      "style": style,
      "media": media
    };
  }
}

/** CSS stylesheet metainformation. */
class CSSStyleSheetHeader {
  /** The stylesheet identifier. */
  String styleSheetId;

/** Owner frame identifier. */
  String frameId;

/** Stylesheet resource URL. */
  String sourceURL;

/** URL of source map associated with the stylesheet (if any). */
  String sourceMapURL;

/** Stylesheet origin. */
  String origin;

/** Stylesheet title. */
  String title;

/** The backend id for the owner node of the stylesheet. */
  int ownerNode;

/** Denotes whether the stylesheet is disabled. */
  bool disabled;

/** Whether the sourceURL field value comes from the sourceURL comment. */
  bool hasSourceURL;

/** Whether this stylesheet is created for STYLE tag by parser. This flag is not set for
document.written STYLE tags. */
  bool isInline;

/** Line offset of the stylesheet within the resource (zero based). */
  num startLine;

/** Column offset of the stylesheet within the resource (zero based). */
  num startColumn;

/** Size of the content (in characters). */
  num length;

  Map<String, dynamic> toJson() {
    return {
      "styleSheetId": styleSheetId,
      "frameId": frameId,
      "sourceURL": sourceURL,
      "sourceMapURL": sourceMapURL,
      "origin": origin,
      "title": title,
      "ownerNode": ownerNode,
      "disabled": disabled,
      "hasSourceURL": hasSourceURL,
      "isInline": isInline,
      "startLine": startLine,
      "startColumn": startColumn,
      "length": length
    };
  }
}

/** Selector list data. */
class SelectorList {
  /** Selectors in the list. */
  List<Value> selectors;

/** Rule selector text. */
  String text;

  Map<String, dynamic> toJson() {
    return {"selectors": selectors, "text": text};
  }
}

/** Data for a simple selector (these are delimited by commas in a selector list). */
class Value {
  /** Value text. */
  String text;

/** Value range in the underlying resource (if available). */
  SourceRange range;

  Map<String, dynamic> toJson() {
    return {"text": text, "range": range};
  }
}

/** Match data for a CSS rule. */
class RuleMatch {
  /** CSS rule in the match. */
  CSSRule rule;

/** Matching selector indices in the rule's selectorList selectors (0-based). */
  List matchingSelectors;

  Map<String, dynamic> toJson() {
    return {"rule": rule, "matchingSelectors": matchingSelectors};
  }
}

/** Inherited CSS rule collection from ancestor node. */
class InheritedStyleEntry {
  /** The ancestor node's inline style, if any, in the style inheritance chain. */
  CSSStyle inlineStyle;

/** Matches of CSS rules matching the ancestor node in the style inheritance chain. */
  List<RuleMatch> matchedCSSRules;

  Map<String, dynamic> toJson() {
    return {"inlineStyle": inlineStyle, "matchedCSSRules": matchedCSSRules};
  }
}

/** CSS rule collection for a single pseudo style. */
class PseudoElementMatches {
  /** Pseudo element type. */
  String pseudoType;

/** Matches of CSS rules applicable to the pseudo style. */
  List<RuleMatch> matches;

  Map<String, dynamic> toJson() {
    return {"pseudoType": pseudoType, "matches": matches};
  }
}

/** Cached response */
class CachedResponse {
  /** Entry content, base64-encoded. */
  String body;

  Map<String, dynamic> toJson() {
    return {"body": body};
  }
}

/**  */
class Header {
  /**  */
  String name;

/**  */
  String value;

  Map<String, dynamic> toJson() {
    return {"name": name, "value": value};
  }
}

/** Cache identifier. */
class Cache {
  /** An opaque unique id of the cache. */
  String cacheId;

/** Security origin of the cache. */
  String securityOrigin;

/** The name of the cache. */
  String cacheName;

  Map<String, dynamic> toJson() {
    return {
      "cacheId": cacheId,
      "securityOrigin": securityOrigin,
      "cacheName": cacheName
    };
  }
}

/** Data entry. */
class DataEntry {
  /** Request URL. */
  String requestURL;

/** Request method. */
  String requestMethod;

/** Request headers */
  List<Header> requestHeaders;

/** Number of seconds since epoch. */
  num responseTime;

/** HTTP response status code. */
  int responseStatus;

/** HTTP response status text. */
  String responseStatusText;

/** Response headers */
  List<Header> responseHeaders;

  Map<String, dynamic> toJson() {
    return {
      "requestURL": requestURL,
      "requestMethod": requestMethod,
      "requestHeaders": requestHeaders,
      "responseTime": responseTime,
      "responseStatus": responseStatus,
      "responseStatusText": responseStatusText,
      "responseHeaders": responseHeaders
    };
  }
}

/** Rectangle. */
class Rect {
  /** X coordinate */
  num x;

/** Y coordinate */
  num y;

/** Rectangle width */
  num width;

/** Rectangle height */
  num height;

  Map<String, dynamic> toJson() {
    return {"x": x, "y": y, "width": width, "height": height};
  }
}

/** CSS Shape Outside details. */
class ShapeOutsideInfo {
  /** Shape bounds */
  List bounds;

/** Shape coordinate details */
  List shape;

/** Margin shape bounds */
  List marginShape;

  Map<String, dynamic> toJson() {
    return {"bounds": bounds, "shape": shape, "marginShape": marginShape};
  }
}

/** Box model. */
class BoxModel {
  /** Content box */
  List content;

/** Padding box */
  List padding;

/** Border box */
  List border;

/** Margin box */
  List margin;

/** Node width */
  int width;

/** Node height */
  int height;

/** Shape outside coordinates */
  ShapeOutsideInfo shapeOutside;

  Map<String, dynamic> toJson() {
    return {
      "content": content,
      "padding": padding,
      "border": border,
      "margin": margin,
      "width": width,
      "height": height,
      "shapeOutside": shapeOutside
    };
  }
}

/** A structure holding an RGBA color. */
class RGBA {
  /** The red component, in the [0-255] range. */
  int r;

/** The green component, in the [0-255] range. */
  int g;

/** The blue component, in the [0-255] range. */
  int b;

/** The alpha component, in the [0-1] range (default: 1). */
  num a;

  Map<String, dynamic> toJson() {
    return {"r": r, "g": g, "b": b, "a": a};
  }
}

/** DOM interaction is implemented in terms of mirror objects that represent the actual DOM nodes.
DOMNode is a base node mirror type. */
class Node {
  /** Node identifier that is passed into the rest of the DOM messages as the `nodeId`. Backend
will only push node with given `id` once. It is aware of all requested nodes and will only
fire DOM events for nodes known to the client. */
  int nodeId;

/** The id of the parent node if any. */
  int parentId;

/** The BackendNodeId for this node. */
  int backendNodeId;

/** `Node`'s nodeType. */
  int nodeType;

/** `Node`'s nodeName. */
  String nodeName;

/** `Node`'s localName. */
  String localName;

/** `Node`'s nodeValue. */
  String nodeValue;

/** Child count for `Container` nodes. */
  int childNodeCount;

/** Child nodes of this node when requested with children. */
  List<Node> children;

/** Attributes of the `Element` node in the form of flat array `[name1, value1, name2, value2]`. */
  List attributes;

/** Document URL that `Document` or `FrameOwner` node points to. */
  String documentURL;

/** Base URL that `Document` or `FrameOwner` node uses for URL completion. */
  String baseURL;

/** `DocumentType`'s publicId. */
  String publicId;

/** `DocumentType`'s systemId. */
  String systemId;

/** `DocumentType`'s internalSubset. */
  String internalSubset;

/** `Document`'s XML version in case of XML documents. */
  String xmlVersion;

/** `Attr`'s name. */
  String name;

/** `Attr`'s value. */
  String value;

/** Pseudo element type for this node. */
  String pseudoType;

/** Shadow root type. */
  String shadowRootType;

/** Frame ID for frame owner elements. */
  String frameId;

/** Content document for frame owner elements. */
  Node contentDocument;

/** Shadow root list for given element host. */
  List<Node> shadowRoots;

/** Content document fragment for template elements. */
  Node templateContent;

/** Pseudo elements associated with this node. */
  List<Node> pseudoElements;

/** Import document for the HTMLImport links. */
  Node importedDocument;

/** Distributed nodes for given insertion point. */
  List<BackendNode> distributedNodes;

/** Whether the node is SVG. */
  bool isSVG;

  Map<String, dynamic> toJson() {
    return {
      "nodeId": nodeId,
      "parentId": parentId,
      "backendNodeId": backendNodeId,
      "nodeType": nodeType,
      "nodeName": nodeName,
      "localName": localName,
      "nodeValue": nodeValue,
      "childNodeCount": childNodeCount,
      "children": children,
      "attributes": attributes,
      "documentURL": documentURL,
      "baseURL": baseURL,
      "publicId": publicId,
      "systemId": systemId,
      "internalSubset": internalSubset,
      "xmlVersion": xmlVersion,
      "name": name,
      "value": value,
      "pseudoType": pseudoType,
      "shadowRootType": shadowRootType,
      "frameId": frameId,
      "contentDocument": contentDocument,
      "shadowRoots": shadowRoots,
      "templateContent": templateContent,
      "pseudoElements": pseudoElements,
      "importedDocument": importedDocument,
      "distributedNodes": distributedNodes,
      "isSVG": isSVG
    };
  }
}

/** Backend node with a friendly name. */
class BackendNode {
  /** `Node`'s nodeType. */
  int nodeType;

/** `Node`'s nodeName. */
  String nodeName;

/**  */
  int backendNodeId;

  Map<String, dynamic> toJson() {
    return {
      "nodeType": nodeType,
      "nodeName": nodeName,
      "backendNodeId": backendNodeId
    };
  }
}

/** Object event listener. */
class EventListener {
  /** `EventListener`'s type. */
  String type;

/** `EventListener`'s useCapture. */
  bool useCapture;

/** `EventListener`'s passive flag. */
  bool passive;

/** `EventListener`'s once flag. */
  bool once;

/** Script id of the handler code. */
  String scriptId;

/** Line number in the script (0-based). */
  int lineNumber;

/** Column number in the script (0-based). */
  int columnNumber;

/** Event handler function value. */
  RemoteObject handler;

/** Event original handler function value. */
  RemoteObject originalHandler;

/** Node the listener is added to (if any). */
  int backendNodeId;

  Map<String, dynamic> toJson() {
    return {
      "type": type,
      "useCapture": useCapture,
      "passive": passive,
      "once": once,
      "scriptId": scriptId,
      "lineNumber": lineNumber,
      "columnNumber": columnNumber,
      "handler": handler,
      "originalHandler": originalHandler,
      "backendNodeId": backendNodeId
    };
  }
}

/** A name/value pair. */
class NameValue {
  /** Attribute/property name. */
  String name;

/** Attribute/property value. */
  String value;

  Map<String, dynamic> toJson() {
    return {"name": name, "value": value};
  }
}

/** A subset of the full ComputedStyle as defined by the request whitelist. */
class ComputedStyle {
  /** Name/value pairs of computed style properties. */
  List<NameValue> properties;

  Map<String, dynamic> toJson() {
    return {"properties": properties};
  }
}

/** Details of an element in the DOM tree with a LayoutObject. */
class LayoutTreeNode {
  /** The index of the related DOM node in the `domNodes` array returned by `getSnapshot`. */
  int domNodeIndex;

/** The absolute position bounding box. */
  Rect boundingBox;

/** Contents of the LayoutText, if any. */
  String layoutText;

/** The post-layout inline text nodes, if any. */
  List<InlineTextBox> inlineTextNodes;

/** Index into the `computedStyles` array returned by `getSnapshot`. */
  int styleIndex;

  Map<String, dynamic> toJson() {
    return {
      "domNodeIndex": domNodeIndex,
      "boundingBox": boundingBox,
      "layoutText": layoutText,
      "inlineTextNodes": inlineTextNodes,
      "styleIndex": styleIndex
    };
  }
}

/** Details of post layout rendered text positions. The exact layout should not be regarded as
stable and may change between versions. */
class InlineTextBox {
  /** The absolute position bounding box. */
  Rect boundingBox;

/** The starting index in characters, for this post layout textbox substring. */
  int startCharacterIndex;

/** The number of characters in this post layout textbox substring. */
  int numCharacters;

  Map<String, dynamic> toJson() {
    return {
      "boundingBox": boundingBox,
      "startCharacterIndex": startCharacterIndex,
      "numCharacters": numCharacters
    };
  }
}

/** A Node in the DOM tree. */
class DOMNode {
  /** `Node`'s nodeType. */
  int nodeType;

/** `Node`'s nodeName. */
  String nodeName;

/** `Node`'s nodeValue. */
  String nodeValue;

/** Only set for textarea elements, contains the text value. */
  String textValue;

/** Only set for input elements, contains the input's associated text value. */
  String inputValue;

/** Only set for radio and checkbox input elements, indicates if the element has been checked */
  bool inputChecked;

/** Only set for option elements, indicates if the element has been selected */
  bool optionSelected;

/** `Node`'s id, corresponds to DOM.Node.backendNodeId. */
  int backendNodeId;

/** The indexes of the node's child nodes in the `domNodes` array returned by `getSnapshot`, if
any. */
  List childNodeIndexes;

/** Attributes of an `Element` node. */
  List<NameValue> attributes;

/** Indexes of pseudo elements associated with this node in the `domNodes` array returned by
`getSnapshot`, if any. */
  List pseudoElementIndexes;

/** The index of the node's related layout tree node in the `layoutTreeNodes` array returned by
`getSnapshot`, if any. */
  int layoutNodeIndex;

/** Document URL that `Document` or `FrameOwner` node points to. */
  String documentURL;

/** Base URL that `Document` or `FrameOwner` node uses for URL completion. */
  String baseURL;

/** Only set for documents, contains the document's content language. */
  String contentLanguage;

/** Only set for documents, contains the document's character set encoding. */
  String documentEncoding;

/** `DocumentType` node's publicId. */
  String publicId;

/** `DocumentType` node's systemId. */
  String systemId;

/** Frame ID for frame owner elements and also for the document node. */
  String frameId;

/** The index of a frame owner element's content document in the `domNodes` array returned by
`getSnapshot`, if any. */
  int contentDocumentIndex;

/** Index of the imported document's node of a link element in the `domNodes` array returned by
`getSnapshot`, if any. */
  int importedDocumentIndex;

/** Index of the content node of a template element in the `domNodes` array returned by
`getSnapshot`. */
  int templateContentIndex;

/** Type of a pseudo element node. */
  String pseudoType;

/** Whether this DOM node responds to mouse clicks. This includes nodes that have had click
event listeners attached via JavaScript as well as anchor tags that naturally navigate when
clicked. */
  bool isClickable;

/** Details of the node's event listeners, if any. */
  List<EventListener> eventListeners;

/** The selected url for nodes with a srcset attribute. */
  String currentSourceURL;

  Map<String, dynamic> toJson() {
    return {
      "nodeType": nodeType,
      "nodeName": nodeName,
      "nodeValue": nodeValue,
      "textValue": textValue,
      "inputValue": inputValue,
      "inputChecked": inputChecked,
      "optionSelected": optionSelected,
      "backendNodeId": backendNodeId,
      "childNodeIndexes": childNodeIndexes,
      "attributes": attributes,
      "pseudoElementIndexes": pseudoElementIndexes,
      "layoutNodeIndex": layoutNodeIndex,
      "documentURL": documentURL,
      "baseURL": baseURL,
      "contentLanguage": contentLanguage,
      "documentEncoding": documentEncoding,
      "publicId": publicId,
      "systemId": systemId,
      "frameId": frameId,
      "contentDocumentIndex": contentDocumentIndex,
      "importedDocumentIndex": importedDocumentIndex,
      "templateContentIndex": templateContentIndex,
      "pseudoType": pseudoType,
      "isClickable": isClickable,
      "eventListeners": eventListeners,
      "currentSourceURL": currentSourceURL
    };
  }
}

/** DOM Storage identifier. */
class StorageId {
  /** Security origin for the storage. */
  String securityOrigin;

/** Whether the storage is local storage (not session storage). */
  bool isLocalStorage;

  Map<String, dynamic> toJson() {
    return {"securityOrigin": securityOrigin, "isLocalStorage": isLocalStorage};
  }
}

/** Database error. */
class Error {
  /** Error message. */
  String message;

/** Error code. */
  int code;

  Map<String, dynamic> toJson() {
    return {"message": message, "code": code};
  }
}

/** Database object. */
class Database {
  /** Database ID. */
  String id;

/** Database domain. */
  String domain;

/** Database name. */
  String name;

/** Database version. */
  String version;

  Map<String, dynamic> toJson() {
    return {"id": id, "domain": domain, "name": name, "version": version};
  }
}

/** Screen orientation. */
class ScreenOrientation {
  /** Orientation type. */
  String type;

/** Orientation angle. */
  int angle;

  Map<String, dynamic> toJson() {
    return {"type": type, "angle": angle};
  }
}

/** Encoding options for a screenshot. */
class ScreenshotParams {
  /** Image compression format (defaults to png). */
  String format;

/** Compression quality from range [0..100] (jpeg only). */
  int quality;

  Map<String, dynamic> toJson() {
    return {"format": format, "quality": quality};
  }
}

/** Key path. */
class KeyPath {
  /** Key path type. */
  String type;

/** String value. */
  String string;

/** Array value. */
  List array;

  Map<String, dynamic> toJson() {
    return {"type": type, "string": string, "array": array};
  }
}

/** Key range. */
class KeyRange {
  /** Lower bound. */
  Key lower;

/** Upper bound. */
  Key upper;

/** If true lower bound is open. */
  bool lowerOpen;

/** If true upper bound is open. */
  bool upperOpen;

  Map<String, dynamic> toJson() {
    return {
      "lower": lower,
      "upper": upper,
      "lowerOpen": lowerOpen,
      "upperOpen": upperOpen
    };
  }
}

/** Key. */
class Key {
  /** Key type. */
  String type;

/** Number value. */
  num number;

/** String value. */
  String string;

/** Date value. */
  num date;

/** Array value. */
  List<Key> array;

  Map<String, dynamic> toJson() {
    return {
      "type": type,
      "number": number,
      "string": string,
      "date": date,
      "array": array
    };
  }
}

/** Object store index. */
class ObjectStoreIndex {
  /** Index name. */
  String name;

/** Index key path. */
  KeyPath keyPath;

/** If true, index is unique. */
  bool unique;

/** If true, index allows multiple entries for a key. */
  bool multiEntry;

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "keyPath": keyPath,
      "unique": unique,
      "multiEntry": multiEntry
    };
  }
}

/** Object store. */
class ObjectStore {
  /** Object store name. */
  String name;

/** Object store key path. */
  KeyPath keyPath;

/** If true, object store has auto increment flag set. */
  bool autoIncrement;

/** Indexes in this object store. */
  List<ObjectStoreIndex> indexes;

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "keyPath": keyPath,
      "autoIncrement": autoIncrement,
      "indexes": indexes
    };
  }
}

/** Database with an array of object stores. */
class DatabaseWithObjectStores {
  /** Database name. */
  String name;

/** Database version. */
  int version;

/** Object stores in this database. */
  List<ObjectStore> objectStores;

  Map<String, dynamic> toJson() {
    return {"name": name, "version": version, "objectStores": objectStores};
  }
}

/**  */
class TouchPoint {
  /** X coordinate of the event relative to the main frame's viewport in CSS pixels. */
  num x;

/** Y coordinate of the event relative to the main frame's viewport in CSS pixels. 0 refers to
the top of the viewport and Y increases as it proceeds towards the bottom of the viewport. */
  num y;

/** X radius of the touch area (default: 1.0). */
  num radiusX;

/** Y radius of the touch area (default: 1.0). */
  num radiusY;

/** Rotation angle (default: 0.0). */
  num rotationAngle;

/** Force (default: 1.0). */
  num force;

/** Identifier used to track touch sources between events, must be unique within an event. */
  num id;

  Map<String, dynamic> toJson() {
    return {
      "x": x,
      "y": y,
      "radiusX": radiusX,
      "radiusY": radiusY,
      "rotationAngle": rotationAngle,
      "force": force,
      "id": id
    };
  }
}

/** Information about a compositing layer. */
class Layer {
  /** The unique id for this layer. */
  String layerId;

/** The id of parent (not present for root). */
  String parentLayerId;

/** The backend id for the node associated with this layer. */
  int backendNodeId;

/** Offset from parent layer, X coordinate. */
  num offsetX;

/** Offset from parent layer, Y coordinate. */
  num offsetY;

/** Layer width. */
  num width;

/** Layer height. */
  num height;

/** Transformation matrix for layer, default is identity matrix */
  List transform;

/** Transform anchor point X, absent if no transform specified */
  num anchorX;

/** Transform anchor point Y, absent if no transform specified */
  num anchorY;

/** Transform anchor point Z, absent if no transform specified */
  num anchorZ;

/** Indicates how many time this layer has painted. */
  int paintCount;

/** Indicates whether this layer hosts any content, rather than being used for
transform/scrolling purposes only. */
  bool drawsContent;

/** Set if layer is not visible. */
  bool invisible;

/** Rectangles scrolling on main thread only. */
  List<ScrollRect> scrollRects;

/** Sticky position constraint information */
  StickyPositionConstraint stickyPositionConstraint;

  Map<String, dynamic> toJson() {
    return {
      "layerId": layerId,
      "parentLayerId": parentLayerId,
      "backendNodeId": backendNodeId,
      "offsetX": offsetX,
      "offsetY": offsetY,
      "width": width,
      "height": height,
      "transform": transform,
      "anchorX": anchorX,
      "anchorY": anchorY,
      "anchorZ": anchorZ,
      "paintCount": paintCount,
      "drawsContent": drawsContent,
      "invisible": invisible,
      "scrollRects": scrollRects,
      "stickyPositionConstraint": stickyPositionConstraint
    };
  }
}

/** Serialized fragment of layer picture along with its offset within the layer. */
class PictureTile {
  /** Offset from owning layer left boundary */
  num x;

/** Offset from owning layer top boundary */
  num y;

/** Base64-encoded snapshot data. */
  String picture;

  Map<String, dynamic> toJson() {
    return {"x": x, "y": y, "picture": picture};
  }
}

/** Sticky position constraints. */
class StickyPositionConstraint {
  /** Layout rectangle of the sticky element before being shifted */
  Rect stickyBoxRect;

/** Layout rectangle of the containing block of the sticky element */
  Rect containingBlockRect;

/** The nearest sticky layer that shifts the sticky box */
  String nearestLayerShiftingStickyBox;

/** The nearest sticky layer that shifts the containing block */
  String nearestLayerShiftingContainingBlock;

  Map<String, dynamic> toJson() {
    return {
      "stickyBoxRect": stickyBoxRect,
      "containingBlockRect": containingBlockRect,
      "nearestLayerShiftingStickyBox": nearestLayerShiftingStickyBox,
      "nearestLayerShiftingContainingBlock": nearestLayerShiftingContainingBlock
    };
  }
}

/** Rectangle where scrolling happens on the main thread. */
class ScrollRect {
  /** Rectangle itself. */
  Rect rect;

/** Reason for rectangle to force scrolling on the main thread */
  String type;

  Map<String, dynamic> toJson() {
    return {"rect": rect, "type": type};
  }
}

/** Violation configuration setting. */
class ViolationSetting {
  /** Violation type. */
  String name;

/** Time threshold to trigger upon. */
  num threshold;

  Map<String, dynamic> toJson() {
    return {"name": name, "threshold": threshold};
  }
}

/** Log entry. */
class LogEntry {
  /** Log entry source. */
  String source;

/** Log entry severity. */
  String level;

/** Logged text. */
  String text;

/** Timestamp when this entry was added. */
  num timestamp;

/** URL of the resource if known. */
  String url;

/** Line number in the resource. */
  int lineNumber;

/** JavaScript stack trace. */
  StackTrace stackTrace;

/** Identifier of the network request associated with this entry. */
  String networkRequestId;

/** Identifier of the worker associated with this entry. */
  String workerId;

/** Call arguments. */
  List<RemoteObject> args;

  Map<String, dynamic> toJson() {
    return {
      "source": source,
      "level": level,
      "text": text,
      "timestamp": timestamp,
      "url": url,
      "lineNumber": lineNumber,
      "stackTrace": stackTrace,
      "networkRequestId": networkRequestId,
      "workerId": workerId,
      "args": args
    };
  }
}

/** Array of heap profile samples. */
class SamplingProfile {
  /**  */
  List<SamplingProfileNode> samples;

  Map<String, dynamic> toJson() {
    return {"samples": samples};
  }
}

/** Heap profile sample. */
class SamplingProfileNode {
  /** Size of the sampled allocation. */
  num size;

/** Number of sampled allocations of that size. */
  num count;

/** Execution stack at the point of allocation. */
  List stack;

  Map<String, dynamic> toJson() {
    return {"size": size, "count": count, "stack": stack};
  }
}

/** Request pattern for interception. */
class RequestPattern {
  /** Wildcards ('*' -> zero or more, '?' -> exactly one) are allowed. Escape character is
backslash. Omitting is equivalent to "*". */
  String urlPattern;

/** If set, only requests for matching resource types will be intercepted. */
  String resourceType;

/** Stage at wich to begin intercepting requests. Default is Request. */
  String interceptionStage;

  Map<String, dynamic> toJson() {
    return {
      "urlPattern": urlPattern,
      "resourceType": resourceType,
      "interceptionStage": interceptionStage
    };
  }
}

/** Response to an AuthChallenge. */
class AuthChallengeResponse {
  /** The decision on what to do in response to the authorization challenge.  Default means
deferring to the default behavior of the net stack, which will likely either the Cancel
authentication or display a popup dialog box. */
  String response;

/** The username to provide, possibly empty. Should only be set if response is
ProvideCredentials. */
  String username;

/** The password to provide, possibly empty. Should only be set if response is
ProvideCredentials. */
  String password;

  Map<String, dynamic> toJson() {
    return {"response": response, "username": username, "password": password};
  }
}

/** Authorization challenge for HTTP status code 401 or 407. */
class AuthChallenge {
  /** Source of the authentication challenge. */
  String source;

/** Origin of the challenger. */
  String origin;

/** The authentication scheme used, such as basic or digest */
  String scheme;

/** The realm of the challenge. May be empty. */
  String realm;

  Map<String, dynamic> toJson() {
    return {
      "source": source,
      "origin": origin,
      "scheme": scheme,
      "realm": realm
    };
  }
}

/** Cookie parameter object */
class CookieParam {
  /** Cookie name. */
  String name;

/** Cookie value. */
  String value;

/** The request-URI to associate with the setting of the cookie. This value can affect the
default domain and path values of the created cookie. */
  String url;

/** Cookie domain. */
  String domain;

/** Cookie path. */
  String path;

/** True if cookie is secure. */
  bool secure;

/** True if cookie is http-only. */
  bool httpOnly;

/** Cookie SameSite type. */
  String sameSite;

/** Cookie expiration date, session cookie if not set */
  num expires;

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "value": value,
      "url": url,
      "domain": domain,
      "path": path,
      "secure": secure,
      "httpOnly": httpOnly,
      "sameSite": sameSite,
      "expires": expires
    };
  }
}

/** Cookie object */
class Cookie {
  /** Cookie name. */
  String name;

/** Cookie value. */
  String value;

/** Cookie domain. */
  String domain;

/** Cookie path. */
  String path;

/** Cookie expiration date as the number of seconds since the UNIX epoch. */
  num expires;

/** Cookie size. */
  int size;

/** True if cookie is http-only. */
  bool httpOnly;

/** True if cookie is secure. */
  bool secure;

/** True in case of session cookie. */
  bool session;

/** Cookie SameSite type. */
  String sameSite;

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "value": value,
      "domain": domain,
      "path": path,
      "expires": expires,
      "size": size,
      "httpOnly": httpOnly,
      "secure": secure,
      "session": session,
      "sameSite": sameSite
    };
  }
}

/** Information about the request initiator. */
class Initiator {
  /** Type of this initiator. */
  String type;

/** Initiator JavaScript stack trace, set for Script only. */
  StackTrace stack;

/** Initiator URL, set for Parser type or for Script type (when script is importing module). */
  String url;

/** Initiator line number, set for Parser type or for Script type (when script is importing
module) (0-based). */
  num lineNumber;

  Map<String, dynamic> toJson() {
    return {"type": type, "stack": stack, "url": url, "lineNumber": lineNumber};
  }
}

/** Information about the cached resource. */
class CachedResource {
  /** Resource URL. This is the url of the original network request. */
  String url;

/** Type of this resource. */
  String type;

/** Cached response data. */
  Response response;

/** Cached response body size. */
  num bodySize;

  Map<String, dynamic> toJson() {
    return {
      "url": url,
      "type": type,
      "response": response,
      "bodySize": bodySize
    };
  }
}

/** WebSocket frame data. */
class WebSocketFrame {
  /** WebSocket frame opcode. */
  num opcode;

/** WebSocke frame mask. */
  bool mask;

/** WebSocke frame payload data. */
  String payloadData;

  Map<String, dynamic> toJson() {
    return {"opcode": opcode, "mask": mask, "payloadData": payloadData};
  }
}

/** WebSocket response data. */
class WebSocketResponse {
  /** HTTP response status code. */
  int status;

/** HTTP response status text. */
  String statusText;

/** HTTP response headers. */
  Headers headers;

/** HTTP response headers text. */
  String headersText;

/** HTTP request headers. */
  Headers requestHeaders;

/** HTTP request headers text. */
  String requestHeadersText;

  Map<String, dynamic> toJson() {
    return {
      "status": status,
      "statusText": statusText,
      "headers": headers,
      "headersText": headersText,
      "requestHeaders": requestHeaders,
      "requestHeadersText": requestHeadersText
    };
  }
}

/** WebSocket request data. */
class WebSocketRequest {
  /** HTTP request headers. */
  Headers headers;

  Map<String, dynamic> toJson() {
    return {"headers": headers};
  }
}

/** HTTP response data. */
class Response {
  /** Response URL. This URL can be different from CachedResource.url in case of redirect. */
  String url;

/** HTTP response status code. */
  int status;

/** HTTP response status text. */
  String statusText;

/** HTTP response headers. */
  Headers headers;

/** HTTP response headers text. */
  String headersText;

/** Resource mimeType as determined by the browser. */
  String mimeType;

/** Refined HTTP request headers that were actually transmitted over the network. */
  Headers requestHeaders;

/** HTTP request headers text. */
  String requestHeadersText;

/** Specifies whether physical connection was actually reused for this request. */
  bool connectionReused;

/** Physical connection id that was actually used for this request. */
  num connectionId;

/** Remote IP address. */
  String remoteIPAddress;

/** Remote port. */
  int remotePort;

/** Specifies that the request was served from the disk cache. */
  bool fromDiskCache;

/** Specifies that the request was served from the ServiceWorker. */
  bool fromServiceWorker;

/** Total number of bytes received for this request so far. */
  num encodedDataLength;

/** Timing information for the given request. */
  ResourceTiming timing;

/** Protocol used to fetch this request. */
  String protocol;

/** Security state of the request resource. */
  String securityState;

/** Security details for the request. */
  SecurityDetails securityDetails;

  Map<String, dynamic> toJson() {
    return {
      "url": url,
      "status": status,
      "statusText": statusText,
      "headers": headers,
      "headersText": headersText,
      "mimeType": mimeType,
      "requestHeaders": requestHeaders,
      "requestHeadersText": requestHeadersText,
      "connectionReused": connectionReused,
      "connectionId": connectionId,
      "remoteIPAddress": remoteIPAddress,
      "remotePort": remotePort,
      "fromDiskCache": fromDiskCache,
      "fromServiceWorker": fromServiceWorker,
      "encodedDataLength": encodedDataLength,
      "timing": timing,
      "protocol": protocol,
      "securityState": securityState,
      "securityDetails": securityDetails
    };
  }
}

/** Security details about a request. */
class SecurityDetails {
  /** Protocol name (e.g. "TLS 1.2" or "QUIC"). */
  String protocol;

/** Key Exchange used by the connection, or the empty string if not applicable. */
  String keyExchange;

/** (EC)DH group used by the connection, if applicable. */
  String keyExchangeGroup;

/** Cipher name. */
  String cipher;

/** TLS MAC. Note that AEAD ciphers do not have separate MACs. */
  String mac;

/** Certificate ID value. */
  int certificateId;

/** Certificate subject name. */
  String subjectName;

/** Subject Alternative Name (SAN) DNS names and IP addresses. */
  List sanList;

/** Name of the issuing CA. */
  String issuer;

/** Certificate valid from date. */
  num validFrom;

/** Certificate valid to (expiration) date */
  num validTo;

/** List of signed certificate timestamps (SCTs). */
  List<SignedCertificateTimestamp> signedCertificateTimestampList;

  Map<String, dynamic> toJson() {
    return {
      "protocol": protocol,
      "keyExchange": keyExchange,
      "keyExchangeGroup": keyExchangeGroup,
      "cipher": cipher,
      "mac": mac,
      "certificateId": certificateId,
      "subjectName": subjectName,
      "sanList": sanList,
      "issuer": issuer,
      "validFrom": validFrom,
      "validTo": validTo,
      "signedCertificateTimestampList": signedCertificateTimestampList
    };
  }
}

/** Details of a signed certificate timestamp (SCT). */
class SignedCertificateTimestamp {
  /** Validation status. */
  String status;

/** Origin. */
  String origin;

/** Log name / description. */
  String logDescription;

/** Log ID. */
  String logId;

/** Issuance date. */
  num timestamp;

/** Hash algorithm. */
  String hashAlgorithm;

/** Signature algorithm. */
  String signatureAlgorithm;

/** Signature data. */
  String signatureData;

  Map<String, dynamic> toJson() {
    return {
      "status": status,
      "origin": origin,
      "logDescription": logDescription,
      "logId": logId,
      "timestamp": timestamp,
      "hashAlgorithm": hashAlgorithm,
      "signatureAlgorithm": signatureAlgorithm,
      "signatureData": signatureData
    };
  }
}

/** HTTP request data. */
class Request {
  /** Request URL. */
  String url;

/** HTTP request method. */
  String method;

/** HTTP request headers. */
  Headers headers;

/** HTTP POST request data. */
  String postData;

/** True when the request has POST data. Note that postData might still be omitted when this flag is true when the data is too long. */
  bool hasPostData;

/** The mixed content type of the request. */
  String mixedContentType;

/** Priority of the resource request at the time request is sent. */
  String initialPriority;

/** The referrer policy of the request, as defined in https://www.w3.org/TR/referrer-policy/ */
  String referrerPolicy;

/** Whether is loaded via link preload. */
  bool isLinkPreload;

  Map<String, dynamic> toJson() {
    return {
      "url": url,
      "method": method,
      "headers": headers,
      "postData": postData,
      "hasPostData": hasPostData,
      "mixedContentType": mixedContentType,
      "initialPriority": initialPriority,
      "referrerPolicy": referrerPolicy,
      "isLinkPreload": isLinkPreload
    };
  }
}

/** Timing information for the request. */
class ResourceTiming {
  /** Timing's requestTime is a baseline in seconds, while the other numbers are ticks in
milliseconds relatively to this requestTime. */
  num requestTime;

/** Started resolving proxy. */
  num proxyStart;

/** Finished resolving proxy. */
  num proxyEnd;

/** Started DNS address resolve. */
  num dnsStart;

/** Finished DNS address resolve. */
  num dnsEnd;

/** Started connecting to the remote host. */
  num connectStart;

/** Connected to the remote host. */
  num connectEnd;

/** Started SSL handshake. */
  num sslStart;

/** Finished SSL handshake. */
  num sslEnd;

/** Started running ServiceWorker. */
  num workerStart;

/** Finished Starting ServiceWorker. */
  num workerReady;

/** Started sending request. */
  num sendStart;

/** Finished sending request. */
  num sendEnd;

/** Time the server started pushing request. */
  num pushStart;

/** Time the server finished pushing request. */
  num pushEnd;

/** Finished receiving response headers. */
  num receiveHeadersEnd;

  Map<String, dynamic> toJson() {
    return {
      "requestTime": requestTime,
      "proxyStart": proxyStart,
      "proxyEnd": proxyEnd,
      "dnsStart": dnsStart,
      "dnsEnd": dnsEnd,
      "connectStart": connectStart,
      "connectEnd": connectEnd,
      "sslStart": sslStart,
      "sslEnd": sslEnd,
      "workerStart": workerStart,
      "workerReady": workerReady,
      "sendStart": sendStart,
      "sendEnd": sendEnd,
      "pushStart": pushStart,
      "pushEnd": pushEnd,
      "receiveHeadersEnd": receiveHeadersEnd
    };
  }
}

/** Request / response headers as keys / values of JSON object. */
class Headers {}

/** Configuration data for the highlighting of page elements. */
class HighlightConfig {
  /** Whether the node info tooltip should be shown (default: false). */
  bool showInfo;

/** Whether the rulers should be shown (default: false). */
  bool showRulers;

/** Whether the extension lines from node to the rulers should be shown (default: false). */
  bool showExtensionLines;

/**  */
  bool displayAsMaterial;

/** The content box highlight fill color (default: transparent). */
  RGBA contentColor;

/** The padding highlight fill color (default: transparent). */
  RGBA paddingColor;

/** The border highlight fill color (default: transparent). */
  RGBA borderColor;

/** The margin highlight fill color (default: transparent). */
  RGBA marginColor;

/** The event target element highlight fill color (default: transparent). */
  RGBA eventTargetColor;

/** The shape outside fill color (default: transparent). */
  RGBA shapeColor;

/** The shape margin fill color (default: transparent). */
  RGBA shapeMarginColor;

/** Selectors to highlight relevant nodes. */
  String selectorList;

/** The grid layout color (default: transparent). */
  RGBA cssGridColor;

  Map<String, dynamic> toJson() {
    return {
      "showInfo": showInfo,
      "showRulers": showRulers,
      "showExtensionLines": showExtensionLines,
      "displayAsMaterial": displayAsMaterial,
      "contentColor": contentColor,
      "paddingColor": paddingColor,
      "borderColor": borderColor,
      "marginColor": marginColor,
      "eventTargetColor": eventTargetColor,
      "shapeColor": shapeColor,
      "shapeMarginColor": shapeMarginColor,
      "selectorList": selectorList,
      "cssGridColor": cssGridColor
    };
  }
}

/** Viewport for capturing screenshot. */
class Viewport {
  /** X offset in CSS pixels. */
  num x;

/** Y offset in CSS pixels */
  num y;

/** Rectangle width in CSS pixels */
  num width;

/** Rectangle height in CSS pixels */
  num height;

/** Page scale factor. */
  num scale;

  Map<String, dynamic> toJson() {
    return {"x": x, "y": y, "width": width, "height": height, "scale": scale};
  }
}

/** Visual viewport position, dimensions, and scale. */
class VisualViewport {
  /** Horizontal offset relative to the layout viewport (CSS pixels). */
  num offsetX;

/** Vertical offset relative to the layout viewport (CSS pixels). */
  num offsetY;

/** Horizontal offset relative to the document (CSS pixels). */
  num pageX;

/** Vertical offset relative to the document (CSS pixels). */
  num pageY;

/** Width (CSS pixels), excludes scrollbar if present. */
  num clientWidth;

/** Height (CSS pixels), excludes scrollbar if present. */
  num clientHeight;

/** Scale relative to the ideal viewport (size at width=device-width). */
  num scale;

  Map<String, dynamic> toJson() {
    return {
      "offsetX": offsetX,
      "offsetY": offsetY,
      "pageX": pageX,
      "pageY": pageY,
      "clientWidth": clientWidth,
      "clientHeight": clientHeight,
      "scale": scale
    };
  }
}

/** Layout viewport position and dimensions. */
class LayoutViewport {
  /** Horizontal offset relative to the document (CSS pixels). */
  int pageX;

/** Vertical offset relative to the document (CSS pixels). */
  int pageY;

/** Width (CSS pixels), excludes scrollbar if present. */
  int clientWidth;

/** Height (CSS pixels), excludes scrollbar if present. */
  int clientHeight;

  Map<String, dynamic> toJson() {
    return {
      "pageX": pageX,
      "pageY": pageY,
      "clientWidth": clientWidth,
      "clientHeight": clientHeight
    };
  }
}

/** Error while paring app manifest. */
class AppManifestError {
  /** Error message. */
  String message;

/** If criticial, this is a non-recoverable parse error. */
  int critical;

/** Error line. */
  int line;

/** Error column. */
  int column;

  Map<String, dynamic> toJson() {
    return {
      "message": message,
      "critical": critical,
      "line": line,
      "column": column
    };
  }
}

/** Screencast frame metadata. */
class ScreencastFrameMetadata {
  /** Top offset in DIP. */
  num offsetTop;

/** Page scale factor. */
  num pageScaleFactor;

/** Device screen width in DIP. */
  num deviceWidth;

/** Device screen height in DIP. */
  num deviceHeight;

/** Position of horizontal scroll in CSS pixels. */
  num scrollOffsetX;

/** Position of vertical scroll in CSS pixels. */
  num scrollOffsetY;

/** Frame swap timestamp. */
  num timestamp;

  Map<String, dynamic> toJson() {
    return {
      "offsetTop": offsetTop,
      "pageScaleFactor": pageScaleFactor,
      "deviceWidth": deviceWidth,
      "deviceHeight": deviceHeight,
      "scrollOffsetX": scrollOffsetX,
      "scrollOffsetY": scrollOffsetY,
      "timestamp": timestamp
    };
  }
}

/** Navigation history entry. */
class NavigationEntry {
  /** Unique id of the navigation history entry. */
  int id;

/** URL of the navigation history entry. */
  String url;

/** URL that the user typed in the url bar. */
  String userTypedURL;

/** Title of the navigation history entry. */
  String title;

/** Transition type. */
  String transitionType;

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "url": url,
      "userTypedURL": userTypedURL,
      "title": title,
      "transitionType": transitionType
    };
  }
}

/** Information about the Frame hierarchy. */
class FrameTree {
  /** Frame information for this tree item. */
  Frame frame;

/** Child frames. */
  List<FrameTree> childFrames;

  Map<String, dynamic> toJson() {
    return {"frame": frame, "childFrames": childFrames};
  }
}

/** Information about the Frame hierarchy along with their cached resources. */
class FrameResourceTree {
  /** Frame information for this tree item. */
  Frame frame;

/** Child frames. */
  List<FrameResourceTree> childFrames;

/** Information about frame resources. */
  List<FrameResource> resources;

  Map<String, dynamic> toJson() {
    return {"frame": frame, "childFrames": childFrames, "resources": resources};
  }
}

/** Information about the Resource on the page. */
class FrameResource {
  /** Resource URL. */
  String url;

/** Type of this resource. */
  String type;

/** Resource mimeType as determined by the browser. */
  String mimeType;

/** last-modified timestamp as reported by server. */
  num lastModified;

/** Resource content size. */
  num contentSize;

/** True if the resource failed to load. */
  bool failed;

/** True if the resource was canceled during loading. */
  bool canceled;

  Map<String, dynamic> toJson() {
    return {
      "url": url,
      "type": type,
      "mimeType": mimeType,
      "lastModified": lastModified,
      "contentSize": contentSize,
      "failed": failed,
      "canceled": canceled
    };
  }
}

/** Information about the Frame on the page. */
class Frame {
  /** Frame unique identifier. */
  String id;

/** Parent frame identifier. */
  String parentId;

/** Identifier of the loader associated with this frame. */
  String loaderId;

/** Frame's name as specified in the tag. */
  String name;

/** Frame document's URL. */
  String url;

/** Frame document's security origin. */
  String securityOrigin;

/** Frame document's mimeType as determined by the browser. */
  String mimeType;

/** If the frame failed to load, this contains the URL that could not be loaded. */
  String unreachableUrl;

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "parentId": parentId,
      "loaderId": loaderId,
      "name": name,
      "url": url,
      "securityOrigin": securityOrigin,
      "mimeType": mimeType,
      "unreachableUrl": unreachableUrl
    };
  }
}

/** Run-time execution metric. */
class Metric {
  /** Metric name. */
  String name;

/** Metric value. */
  num value;

  Map<String, dynamic> toJson() {
    return {"name": name, "value": value};
  }
}

/** Information about insecure content on the page. */
class InsecureContentStatus {
  /** True if the page was loaded over HTTPS and ran mixed (HTTP) content such as scripts. */
  bool ranMixedContent;

/** True if the page was loaded over HTTPS and displayed mixed (HTTP) content such as images. */
  bool displayedMixedContent;

/** True if the page was loaded over HTTPS and contained a form targeting an insecure url. */
  bool containedMixedForm;

/** True if the page was loaded over HTTPS without certificate errors, and ran content such as
scripts that were loaded with certificate errors. */
  bool ranContentWithCertErrors;

/** True if the page was loaded over HTTPS without certificate errors, and displayed content
such as images that were loaded with certificate errors. */
  bool displayedContentWithCertErrors;

/** Security state representing a page that ran insecure content. */
  String ranInsecureContentStyle;

/** Security state representing a page that displayed insecure content. */
  String displayedInsecureContentStyle;

  Map<String, dynamic> toJson() {
    return {
      "ranMixedContent": ranMixedContent,
      "displayedMixedContent": displayedMixedContent,
      "containedMixedForm": containedMixedForm,
      "ranContentWithCertErrors": ranContentWithCertErrors,
      "displayedContentWithCertErrors": displayedContentWithCertErrors,
      "ranInsecureContentStyle": ranInsecureContentStyle,
      "displayedInsecureContentStyle": displayedInsecureContentStyle
    };
  }
}

/** An explanation of an factor contributing to the security state. */
class SecurityStateExplanation {
  /** Security state representing the severity of the factor being explained. */
  String securityState;

/** Title describing the type of factor. */
  String title;

/** Short phrase describing the type of factor. */
  String summary;

/** Full text explanation of the factor. */
  String description;

/** The type of mixed content described by the explanation. */
  String mixedContentType;

/** Page certificate. */
  List certificate;

  Map<String, dynamic> toJson() {
    return {
      "securityState": securityState,
      "title": title,
      "summary": summary,
      "description": description,
      "mixedContentType": mixedContentType,
      "certificate": certificate
    };
  }
}

/** ServiceWorker error message. */
class ServiceWorkerErrorMessage {
  /**  */
  String errorMessage;

/**  */
  String registrationId;

/**  */
  String versionId;

/**  */
  String sourceURL;

/**  */
  int lineNumber;

/**  */
  int columnNumber;

  Map<String, dynamic> toJson() {
    return {
      "errorMessage": errorMessage,
      "registrationId": registrationId,
      "versionId": versionId,
      "sourceURL": sourceURL,
      "lineNumber": lineNumber,
      "columnNumber": columnNumber
    };
  }
}

/** ServiceWorker version. */
class ServiceWorkerVersion {
  /**  */
  String versionId;

/**  */
  String registrationId;

/**  */
  String scriptURL;

/**  */
  String runningStatus;

/**  */
  String status;

/** The Last-Modified header value of the main script. */
  num scriptLastModified;

/** The time at which the response headers of the main script were received from the server.
For cached script it is the last time the cache entry was validated. */
  num scriptResponseTime;

/**  */
  List<String> controlledClients;

/**  */
  String targetId;

  Map<String, dynamic> toJson() {
    return {
      "versionId": versionId,
      "registrationId": registrationId,
      "scriptURL": scriptURL,
      "runningStatus": runningStatus,
      "status": status,
      "scriptLastModified": scriptLastModified,
      "scriptResponseTime": scriptResponseTime,
      "controlledClients": controlledClients,
      "targetId": targetId
    };
  }
}

/** ServiceWorker registration. */
class ServiceWorkerRegistration {
  /**  */
  String registrationId;

/**  */
  String scopeURL;

/**  */
  bool isDeleted;

  Map<String, dynamic> toJson() {
    return {
      "registrationId": registrationId,
      "scopeURL": scopeURL,
      "isDeleted": isDeleted
    };
  }
}

/** Usage for a storage type. */
class UsageForType {
  /** Name of storage type. */
  String storageType;

/** Storage usage (bytes). */
  num usage;

  Map<String, dynamic> toJson() {
    return {"storageType": storageType, "usage": usage};
  }
}

/** Provides information about the GPU(s) on the system. */
class GPUInfo {
  /** The graphics devices on the system. Element 0 is the primary GPU. */
  List<GPUDevice> devices;

/** An optional dictionary of additional GPU related attributes. */
  Map auxAttributes;

/** An optional dictionary of graphics features and their status. */
  Map featureStatus;

/** An optional array of GPU driver bug workarounds. */
  List driverBugWorkarounds;

  Map<String, dynamic> toJson() {
    return {
      "devices": devices,
      "auxAttributes": auxAttributes,
      "featureStatus": featureStatus,
      "driverBugWorkarounds": driverBugWorkarounds
    };
  }
}

/** Describes a single graphics processor (GPU). */
class GPUDevice {
  /** PCI ID of the GPU vendor, if available; 0 otherwise. */
  num vendorId;

/** PCI ID of the GPU device, if available; 0 otherwise. */
  num deviceId;

/** String description of the GPU vendor, if the PCI ID is not available. */
  String vendorString;

/** String description of the GPU device, if the PCI ID is not available. */
  String deviceString;

  Map<String, dynamic> toJson() {
    return {
      "vendorId": vendorId,
      "deviceId": deviceId,
      "vendorString": vendorString,
      "deviceString": deviceString
    };
  }
}

/**  */
class RemoteLocation {
  /**  */
  String host;

/**  */
  int port;

  Map<String, dynamic> toJson() {
    return {"host": host, "port": port};
  }
}

/**  */
class TargetInfo {
  /**  */
  String targetId;

/**  */
  String type;

/**  */
  String title;

/**  */
  String url;

/** Whether the target has an attached client. */
  bool attached;

/** Opener target Id */
  String openerId;

  Map<String, dynamic> toJson() {
    return {
      "targetId": targetId,
      "type": type,
      "title": title,
      "url": url,
      "attached": attached,
      "openerId": openerId
    };
  }
}

/**  */
class TraceConfig {
  /** Controls how the trace buffer stores data. */
  String recordMode;

/** Turns on JavaScript stack sampling. */
  bool enableSampling;

/** Turns on system tracing. */
  bool enableSystrace;

/** Turns on argument filter. */
  bool enableArgumentFilter;

/** Included category filters. */
  List includedCategories;

/** Excluded category filters. */
  List excludedCategories;

/** Configuration to synthesize the delays in tracing. */
  List syntheticDelays;

/** Configuration for memory dump triggers. Used only when "memory-infra" category is enabled. */
  MemoryDumpConfig memoryDumpConfig;

  Map<String, dynamic> toJson() {
    return {
      "recordMode": recordMode,
      "enableSampling": enableSampling,
      "enableSystrace": enableSystrace,
      "enableArgumentFilter": enableArgumentFilter,
      "includedCategories": includedCategories,
      "excludedCategories": excludedCategories,
      "syntheticDelays": syntheticDelays,
      "memoryDumpConfig": memoryDumpConfig
    };
  }
}

/** Configuration for memory dump. Used only when "memory-infra" category is enabled. */
class MemoryDumpConfig {}

class DevToolsConsole {
  DevToolsConsole(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onMessageAdded =
      new dart_async.StreamController();

/** Does nothing. */
  dart_async.Future clearMessages() {
    var params = {};
    return _devtools.rpc.sendRequest('Console.clearMessages', params);
  }

/** Disables console domain, prevents further console messages from being reported to the client. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Console.disable', params);
  }

/** Enables console domain, sends the messages collected so far to the client by means of the
`messageAdded` notification. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Console.enable', params);
  }

/** Issued when new console message is added. */
  dart_async.Stream get onMessageAdded => _onMessageAdded.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'Console.messageAdded', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onMessageAdded.close();
  }
}

class DebuggerEnableResponse {
  DebuggerEnableResponse(Map map) {
    debuggerId = map['debuggerId'];
  }

  String debuggerId;
}

class DebuggerEvaluateOnCallFrameResponse {
  DebuggerEvaluateOnCallFrameResponse(Map map) {
    result = map['result'];
    exceptionDetails = map['exceptionDetails'];
  }

  RemoteObject result;

  ExceptionDetails exceptionDetails;
}

class DebuggerGetPossibleBreakpointsResponse {
  DebuggerGetPossibleBreakpointsResponse(Map map) {
    locations = map['locations'];
  }

  List<BreakLocation> locations;
}

class DebuggerGetScriptSourceResponse {
  DebuggerGetScriptSourceResponse(Map map) {
    scriptSource = map['scriptSource'];
  }

  String scriptSource;
}

class DebuggerGetStackTraceResponse {
  DebuggerGetStackTraceResponse(Map map) {
    stackTrace = map['stackTrace'];
  }

  StackTrace stackTrace;
}

class DebuggerRestartFrameResponse {
  DebuggerRestartFrameResponse(Map map) {
    callFrames = map['callFrames'];
    asyncStackTrace = map['asyncStackTrace'];
    asyncStackTraceId = map['asyncStackTraceId'];
  }

  List<CallFrame> callFrames;

  StackTrace asyncStackTrace;

  StackTraceId asyncStackTraceId;
}

class DebuggerSearchInContentResponse {
  DebuggerSearchInContentResponse(Map map) {
    result = map['result'];
  }

  List<SearchMatch> result;
}

class DebuggerSetBreakpointResponse {
  DebuggerSetBreakpointResponse(Map map) {
    breakpointId = map['breakpointId'];
    actualLocation = map['actualLocation'];
  }

  String breakpointId;

  Location actualLocation;
}

class DebuggerSetBreakpointByUrlResponse {
  DebuggerSetBreakpointByUrlResponse(Map map) {
    breakpointId = map['breakpointId'];
    locations = map['locations'];
  }

  String breakpointId;

  List<Location> locations;
}

class DebuggerSetScriptSourceResponse {
  DebuggerSetScriptSourceResponse(Map map) {
    callFrames = map['callFrames'];
    stackChanged = map['stackChanged'];
    asyncStackTrace = map['asyncStackTrace'];
    asyncStackTraceId = map['asyncStackTraceId'];
    exceptionDetails = map['exceptionDetails'];
  }

  List<CallFrame> callFrames;

  bool stackChanged;

  StackTrace asyncStackTrace;

  StackTraceId asyncStackTraceId;

  ExceptionDetails exceptionDetails;
}

class DevToolsDebugger {
  DevToolsDebugger(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onBreakpointResolved =
      new dart_async.StreamController();

  dart_async.StreamController _onPaused = new dart_async.StreamController();

  dart_async.StreamController _onResumed = new dart_async.StreamController();

  dart_async.StreamController _onScriptFailedToParse =
      new dart_async.StreamController();

  dart_async.StreamController _onScriptParsed =
      new dart_async.StreamController();

/** Continues execution until specific location is reached. */
  dart_async.Future continueToLocation(
      {Location location, String targetCallFrames}) {
    var params = {};
    if (location != null) params['location'] = location;

    if (targetCallFrames != null) params['targetCallFrames'] = targetCallFrames;

    return _devtools.rpc.sendRequest('Debugger.continueToLocation', params);
  }

/** Disables debugger for given page. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Debugger.disable', params);
  }

/** Enables debugger for the given page. Clients should not assume that the debugging has been
enabled until the result for this command is received. */
  dart_async.Future<DebuggerEnableResponse> enable() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Debugger.enable', params)
        .then((response) => new DebuggerEnableResponse(response));
  }

/** Evaluates expression on a given call frame. */
  dart_async.Future<DebuggerEvaluateOnCallFrameResponse> evaluateOnCallFrame(
      {String callFrameId,
      String expression,
      String objectGroup,
      bool includeCommandLineAPI,
      bool silent,
      bool returnByValue,
      bool generatePreview,
      bool throwOnSideEffect}) {
    var params = {};
    if (callFrameId != null) params['callFrameId'] = callFrameId;

    if (expression != null) params['expression'] = expression;

    if (objectGroup != null) params['objectGroup'] = objectGroup;

    if (includeCommandLineAPI != null)
      params['includeCommandLineAPI'] = includeCommandLineAPI;

    if (silent != null) params['silent'] = silent;

    if (returnByValue != null) params['returnByValue'] = returnByValue;

    if (generatePreview != null) params['generatePreview'] = generatePreview;

    if (throwOnSideEffect != null)
      params['throwOnSideEffect'] = throwOnSideEffect;

    return _devtools.rpc
        .sendRequest('Debugger.evaluateOnCallFrame', params)
        .then((response) => new DebuggerEvaluateOnCallFrameResponse(response));
  }

/** Returns possible locations for breakpoint. scriptId in start and end range locations should be
the same. */
  dart_async.Future<DebuggerGetPossibleBreakpointsResponse>
      getPossibleBreakpoints(
          {Location start, Location end, bool restrictToFunction}) {
    var params = {};
    if (start != null) params['start'] = start;

    if (end != null) params['end'] = end;

    if (restrictToFunction != null)
      params['restrictToFunction'] = restrictToFunction;

    return _devtools.rpc
        .sendRequest('Debugger.getPossibleBreakpoints', params)
        .then(
            (response) => new DebuggerGetPossibleBreakpointsResponse(response));
  }

/** Returns source for the script with given id. */
  dart_async.Future<DebuggerGetScriptSourceResponse> getScriptSource(
      {String scriptId}) {
    var params = {};
    if (scriptId != null) params['scriptId'] = scriptId;

    return _devtools.rpc
        .sendRequest('Debugger.getScriptSource', params)
        .then((response) => new DebuggerGetScriptSourceResponse(response));
  }

/** Returns stack trace with given `stackTraceId`. */
  dart_async.Future<DebuggerGetStackTraceResponse> getStackTrace(
      {StackTraceId stackTraceId}) {
    var params = {};
    if (stackTraceId != null) params['stackTraceId'] = stackTraceId;

    return _devtools.rpc
        .sendRequest('Debugger.getStackTrace', params)
        .then((response) => new DebuggerGetStackTraceResponse(response));
  }

/** Stops on the next JavaScript statement. */
  dart_async.Future pause() {
    var params = {};
    return _devtools.rpc.sendRequest('Debugger.pause', params);
  }

/**  */
  dart_async.Future pauseOnAsyncCall({StackTraceId parentStackTraceId}) {
    var params = {};
    if (parentStackTraceId != null)
      params['parentStackTraceId'] = parentStackTraceId;

    return _devtools.rpc.sendRequest('Debugger.pauseOnAsyncCall', params);
  }

/** Removes JavaScript breakpoint. */
  dart_async.Future removeBreakpoint({String breakpointId}) {
    var params = {};
    if (breakpointId != null) params['breakpointId'] = breakpointId;

    return _devtools.rpc.sendRequest('Debugger.removeBreakpoint', params);
  }

/** Restarts particular call frame from the beginning. */
  dart_async.Future<DebuggerRestartFrameResponse> restartFrame(
      {String callFrameId}) {
    var params = {};
    if (callFrameId != null) params['callFrameId'] = callFrameId;

    return _devtools.rpc
        .sendRequest('Debugger.restartFrame', params)
        .then((response) => new DebuggerRestartFrameResponse(response));
  }

/** Resumes JavaScript execution. */
  dart_async.Future resume() {
    var params = {};
    return _devtools.rpc.sendRequest('Debugger.resume', params);
  }

/** This method is deprecated - use Debugger.stepInto with breakOnAsyncCall and
Debugger.pauseOnAsyncTask instead. Steps into next scheduled async task if any is scheduled
before next pause. Returns success when async task is actually scheduled, returns error if no
task were scheduled or another scheduleStepIntoAsync was called. */
  dart_async.Future scheduleStepIntoAsync() {
    var params = {};
    return _devtools.rpc.sendRequest('Debugger.scheduleStepIntoAsync', params);
  }

/** Searches for given string in script content. */
  dart_async.Future<DebuggerSearchInContentResponse> searchInContent(
      {String scriptId, String query, bool caseSensitive, bool isRegex}) {
    var params = {};
    if (scriptId != null) params['scriptId'] = scriptId;

    if (query != null) params['query'] = query;

    if (caseSensitive != null) params['caseSensitive'] = caseSensitive;

    if (isRegex != null) params['isRegex'] = isRegex;

    return _devtools.rpc
        .sendRequest('Debugger.searchInContent', params)
        .then((response) => new DebuggerSearchInContentResponse(response));
  }

/** Enables or disables async call stacks tracking. */
  dart_async.Future setAsyncCallStackDepth({int maxDepth}) {
    var params = {};
    if (maxDepth != null) params['maxDepth'] = maxDepth;

    return _devtools.rpc.sendRequest('Debugger.setAsyncCallStackDepth', params);
  }

/** Replace previous blackbox patterns with passed ones. Forces backend to skip stepping/pausing in
scripts with url matching one of the patterns. VM will try to leave blackboxed script by
performing 'step in' several times, finally resorting to 'step out' if unsuccessful. */
  dart_async.Future setBlackboxPatterns({List patterns}) {
    var params = {};
    if (patterns != null) params['patterns'] = patterns;

    return _devtools.rpc.sendRequest('Debugger.setBlackboxPatterns', params);
  }

/** Makes backend skip steps in the script in blackboxed ranges. VM will try leave blacklisted
scripts by performing 'step in' several times, finally resorting to 'step out' if unsuccessful.
Positions array contains positions where blackbox state is changed. First interval isn't
blackboxed. Array should be sorted. */
  dart_async.Future setBlackboxedRanges(
      {String scriptId, List<ScriptPosition> positions}) {
    var params = {};
    if (scriptId != null) params['scriptId'] = scriptId;

    if (positions != null) params['positions'] = positions;

    return _devtools.rpc.sendRequest('Debugger.setBlackboxedRanges', params);
  }

/** Sets JavaScript breakpoint at a given location. */
  dart_async.Future<DebuggerSetBreakpointResponse> setBreakpoint(
      {Location location, String condition}) {
    var params = {};
    if (location != null) params['location'] = location;

    if (condition != null) params['condition'] = condition;

    return _devtools.rpc
        .sendRequest('Debugger.setBreakpoint', params)
        .then((response) => new DebuggerSetBreakpointResponse(response));
  }

/** Sets JavaScript breakpoint at given location specified either by URL or URL regex. Once this
command is issued, all existing parsed scripts will have breakpoints resolved and returned in
`locations` property. Further matching script parsing will result in subsequent
`breakpointResolved` events issued. This logical breakpoint will survive page reloads. */
  dart_async.Future<DebuggerSetBreakpointByUrlResponse> setBreakpointByUrl(
      {int lineNumber,
      String url,
      String urlRegex,
      String scriptHash,
      int columnNumber,
      String condition}) {
    var params = {};
    if (lineNumber != null) params['lineNumber'] = lineNumber;

    if (url != null) params['url'] = url;

    if (urlRegex != null) params['urlRegex'] = urlRegex;

    if (scriptHash != null) params['scriptHash'] = scriptHash;

    if (columnNumber != null) params['columnNumber'] = columnNumber;

    if (condition != null) params['condition'] = condition;

    return _devtools.rpc
        .sendRequest('Debugger.setBreakpointByUrl', params)
        .then((response) => new DebuggerSetBreakpointByUrlResponse(response));
  }

/** Activates / deactivates all breakpoints on the page. */
  dart_async.Future setBreakpointsActive({bool active}) {
    var params = {};
    if (active != null) params['active'] = active;

    return _devtools.rpc.sendRequest('Debugger.setBreakpointsActive', params);
  }

/** Defines pause on exceptions state. Can be set to stop on all exceptions, uncaught exceptions or
no exceptions. Initial pause on exceptions state is `none`. */
  dart_async.Future setPauseOnExceptions({String state}) {
    var params = {};
    if (state != null) params['state'] = state;

    return _devtools.rpc.sendRequest('Debugger.setPauseOnExceptions', params);
  }

/** Changes return value in top frame. Available only at return break position. */
  dart_async.Future setReturnValue({CallArgument newValue}) {
    var params = {};
    if (newValue != null) params['newValue'] = newValue;

    return _devtools.rpc.sendRequest('Debugger.setReturnValue', params);
  }

/** Edits JavaScript source live. */
  dart_async.Future<DebuggerSetScriptSourceResponse> setScriptSource(
      {String scriptId, String scriptSource, bool dryRun}) {
    var params = {};
    if (scriptId != null) params['scriptId'] = scriptId;

    if (scriptSource != null) params['scriptSource'] = scriptSource;

    if (dryRun != null) params['dryRun'] = dryRun;

    return _devtools.rpc
        .sendRequest('Debugger.setScriptSource', params)
        .then((response) => new DebuggerSetScriptSourceResponse(response));
  }

/** Makes page not interrupt on any pauses (breakpoint, exception, dom exception etc). */
  dart_async.Future setSkipAllPauses({bool skip}) {
    var params = {};
    if (skip != null) params['skip'] = skip;

    return _devtools.rpc.sendRequest('Debugger.setSkipAllPauses', params);
  }

/** Changes value of variable in a callframe. Object-based scopes are not supported and must be
mutated manually. */
  dart_async.Future setVariableValue(
      {int scopeNumber,
      String variableName,
      CallArgument newValue,
      String callFrameId}) {
    var params = {};
    if (scopeNumber != null) params['scopeNumber'] = scopeNumber;

    if (variableName != null) params['variableName'] = variableName;

    if (newValue != null) params['newValue'] = newValue;

    if (callFrameId != null) params['callFrameId'] = callFrameId;

    return _devtools.rpc.sendRequest('Debugger.setVariableValue', params);
  }

/** Steps into the function call. */
  dart_async.Future stepInto({bool breakOnAsyncCall}) {
    var params = {};
    if (breakOnAsyncCall != null) params['breakOnAsyncCall'] = breakOnAsyncCall;

    return _devtools.rpc.sendRequest('Debugger.stepInto', params);
  }

/** Steps out of the function call. */
  dart_async.Future stepOut() {
    var params = {};
    return _devtools.rpc.sendRequest('Debugger.stepOut', params);
  }

/** Steps over the statement. */
  dart_async.Future stepOver() {
    var params = {};
    return _devtools.rpc.sendRequest('Debugger.stepOver', params);
  }

/** Fired when breakpoint is resolved to an actual script and location. */
  dart_async.Stream get onBreakpointResolved => _onBreakpointResolved.stream;
/** Fired when the virtual machine stopped on breakpoint or exception or any other stop criteria. */
  dart_async.Stream get onPaused => _onPaused.stream;
/** Fired when the virtual machine resumed execution. */
  dart_async.Stream get onResumed => _onResumed.stream;
/** Fired when virtual machine fails to parse the script. */
  dart_async.Stream get onScriptFailedToParse => _onScriptFailedToParse.stream;
/** Fired when virtual machine parses script. This event is also fired for all known and uncollected
scripts upon enabling debugger. */
  dart_async.Stream get onScriptParsed => _onScriptParsed.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'Debugger.breakpointResolved', (json_rpc_2.Parameters params) {});

    rpc.registerMethod('Debugger.paused', (json_rpc_2.Parameters params) {});

    rpc.registerMethod('Debugger.resumed', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Debugger.scriptFailedToParse', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Debugger.scriptParsed', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onBreakpointResolved.close();
    _onPaused.close();
    _onResumed.close();
    _onScriptFailedToParse.close();
    _onScriptParsed.close();
  }
}

class HeapProfilerGetHeapObjectIdResponse {
  HeapProfilerGetHeapObjectIdResponse(Map map) {
    heapSnapshotObjectId = map['heapSnapshotObjectId'];
  }

  String heapSnapshotObjectId;
}

class HeapProfilerGetObjectByHeapObjectIdResponse {
  HeapProfilerGetObjectByHeapObjectIdResponse(Map map) {
    result = map['result'];
  }

  RemoteObject result;
}

class HeapProfilerGetSamplingProfileResponse {
  HeapProfilerGetSamplingProfileResponse(Map map) {
    profile = map['profile'];
  }

  SamplingHeapProfile profile;
}

class HeapProfilerStopSamplingResponse {
  HeapProfilerStopSamplingResponse(Map map) {
    profile = map['profile'];
  }

  SamplingHeapProfile profile;
}

class DevToolsHeapProfiler {
  DevToolsHeapProfiler(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onAddHeapSnapshotChunk =
      new dart_async.StreamController();

  dart_async.StreamController _onHeapStatsUpdate =
      new dart_async.StreamController();

  dart_async.StreamController _onLastSeenObjectId =
      new dart_async.StreamController();

  dart_async.StreamController _onReportHeapSnapshotProgress =
      new dart_async.StreamController();

  dart_async.StreamController _onResetProfiles =
      new dart_async.StreamController();

/** Enables console to refer to the node with given id via $x (see Command Line API for more details
$x functions). */
  dart_async.Future addInspectedHeapObject({String heapObjectId}) {
    var params = {};
    if (heapObjectId != null) params['heapObjectId'] = heapObjectId;

    return _devtools.rpc
        .sendRequest('HeapProfiler.addInspectedHeapObject', params);
  }

/**  */
  dart_async.Future collectGarbage() {
    var params = {};
    return _devtools.rpc.sendRequest('HeapProfiler.collectGarbage', params);
  }

/**  */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('HeapProfiler.disable', params);
  }

/**  */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('HeapProfiler.enable', params);
  }

/**  */
  dart_async.Future<HeapProfilerGetHeapObjectIdResponse> getHeapObjectId(
      {String objectId}) {
    var params = {};
    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc
        .sendRequest('HeapProfiler.getHeapObjectId', params)
        .then((response) => new HeapProfilerGetHeapObjectIdResponse(response));
  }

/**  */
  dart_async.Future<HeapProfilerGetObjectByHeapObjectIdResponse>
      getObjectByHeapObjectId({String objectId, String objectGroup}) {
    var params = {};
    if (objectId != null) params['objectId'] = objectId;

    if (objectGroup != null) params['objectGroup'] = objectGroup;

    return _devtools.rpc
        .sendRequest('HeapProfiler.getObjectByHeapObjectId', params)
        .then((response) =>
            new HeapProfilerGetObjectByHeapObjectIdResponse(response));
  }

/**  */
  dart_async.Future<HeapProfilerGetSamplingProfileResponse>
      getSamplingProfile() {
    var params = {};
    return _devtools.rpc
        .sendRequest('HeapProfiler.getSamplingProfile', params)
        .then(
            (response) => new HeapProfilerGetSamplingProfileResponse(response));
  }

/**  */
  dart_async.Future startSampling({num samplingInterval}) {
    var params = {};
    if (samplingInterval != null) params['samplingInterval'] = samplingInterval;

    return _devtools.rpc.sendRequest('HeapProfiler.startSampling', params);
  }

/**  */
  dart_async.Future startTrackingHeapObjects({bool trackAllocations}) {
    var params = {};
    if (trackAllocations != null) params['trackAllocations'] = trackAllocations;

    return _devtools.rpc
        .sendRequest('HeapProfiler.startTrackingHeapObjects', params);
  }

/**  */
  dart_async.Future<HeapProfilerStopSamplingResponse> stopSampling() {
    var params = {};
    return _devtools.rpc
        .sendRequest('HeapProfiler.stopSampling', params)
        .then((response) => new HeapProfilerStopSamplingResponse(response));
  }

/**  */
  dart_async.Future stopTrackingHeapObjects({bool reportProgress}) {
    var params = {};
    if (reportProgress != null) params['reportProgress'] = reportProgress;

    return _devtools.rpc
        .sendRequest('HeapProfiler.stopTrackingHeapObjects', params);
  }

/**  */
  dart_async.Future takeHeapSnapshot({bool reportProgress}) {
    var params = {};
    if (reportProgress != null) params['reportProgress'] = reportProgress;

    return _devtools.rpc.sendRequest('HeapProfiler.takeHeapSnapshot', params);
  }

/**  */
  dart_async.Stream get onAddHeapSnapshotChunk =>
      _onAddHeapSnapshotChunk.stream;
/** If heap objects tracking has been started then backend may send update for one or more fragments */
  dart_async.Stream get onHeapStatsUpdate => _onHeapStatsUpdate.stream;
/** If heap objects tracking has been started then backend regularly sends a current value for last
seen object id and corresponding timestamp. If the were changes in the heap since last event
then one or more heapStatsUpdate events will be sent before a new lastSeenObjectId event. */
  dart_async.Stream get onLastSeenObjectId => _onLastSeenObjectId.stream;
/**  */
  dart_async.Stream get onReportHeapSnapshotProgress =>
      _onReportHeapSnapshotProgress.stream;
/**  */
  dart_async.Stream get onResetProfiles => _onResetProfiles.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'HeapProfiler.addHeapSnapshotChunk', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'HeapProfiler.heapStatsUpdate', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'HeapProfiler.lastSeenObjectId', (json_rpc_2.Parameters params) {});

    rpc.registerMethod('HeapProfiler.reportHeapSnapshotProgress',
        (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'HeapProfiler.resetProfiles', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onAddHeapSnapshotChunk.close();
    _onHeapStatsUpdate.close();
    _onLastSeenObjectId.close();
    _onReportHeapSnapshotProgress.close();
    _onResetProfiles.close();
  }
}

class ProfilerGetBestEffortCoverageResponse {
  ProfilerGetBestEffortCoverageResponse(Map map) {
    result = map['result'];
  }

  List<ScriptCoverage> result;
}

class ProfilerStopResponse {
  ProfilerStopResponse(Map map) {
    profile = map['profile'];
  }

  Profile profile;
}

class ProfilerTakePreciseCoverageResponse {
  ProfilerTakePreciseCoverageResponse(Map map) {
    result = map['result'];
  }

  List<ScriptCoverage> result;
}

class ProfilerTakeTypeProfileResponse {
  ProfilerTakeTypeProfileResponse(Map map) {
    result = map['result'];
  }

  List<ScriptTypeProfile> result;
}

class DevToolsProfiler {
  DevToolsProfiler(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onConsoleProfileFinished =
      new dart_async.StreamController();

  dart_async.StreamController _onConsoleProfileStarted =
      new dart_async.StreamController();

/**  */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Profiler.disable', params);
  }

/**  */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Profiler.enable', params);
  }

/** Collect coverage data for the current isolate. The coverage data may be incomplete due to
garbage collection. */
  dart_async.Future<ProfilerGetBestEffortCoverageResponse>
      getBestEffortCoverage() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Profiler.getBestEffortCoverage', params)
        .then(
            (response) => new ProfilerGetBestEffortCoverageResponse(response));
  }

/** Changes CPU profiler sampling interval. Must be called before CPU profiles recording started. */
  dart_async.Future setSamplingInterval({int interval}) {
    var params = {};
    if (interval != null) params['interval'] = interval;

    return _devtools.rpc.sendRequest('Profiler.setSamplingInterval', params);
  }

/**  */
  dart_async.Future start() {
    var params = {};
    return _devtools.rpc.sendRequest('Profiler.start', params);
  }

/** Enable precise code coverage. Coverage data for JavaScript executed before enabling precise code
coverage may be incomplete. Enabling prevents running optimized code and resets execution
counters. */
  dart_async.Future startPreciseCoverage({bool callCount, bool detailed}) {
    var params = {};
    if (callCount != null) params['callCount'] = callCount;

    if (detailed != null) params['detailed'] = detailed;

    return _devtools.rpc.sendRequest('Profiler.startPreciseCoverage', params);
  }

/** Enable type profile. */
  dart_async.Future startTypeProfile() {
    var params = {};
    return _devtools.rpc.sendRequest('Profiler.startTypeProfile', params);
  }

/**  */
  dart_async.Future<ProfilerStopResponse> stop() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Profiler.stop', params)
        .then((response) => new ProfilerStopResponse(response));
  }

/** Disable precise code coverage. Disabling releases unnecessary execution count records and allows
executing optimized code. */
  dart_async.Future stopPreciseCoverage() {
    var params = {};
    return _devtools.rpc.sendRequest('Profiler.stopPreciseCoverage', params);
  }

/** Disable type profile. Disabling releases type profile data collected so far. */
  dart_async.Future stopTypeProfile() {
    var params = {};
    return _devtools.rpc.sendRequest('Profiler.stopTypeProfile', params);
  }

/** Collect coverage data for the current isolate, and resets execution counters. Precise code
coverage needs to have started. */
  dart_async.Future<ProfilerTakePreciseCoverageResponse> takePreciseCoverage() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Profiler.takePreciseCoverage', params)
        .then((response) => new ProfilerTakePreciseCoverageResponse(response));
  }

/** Collect type profile. */
  dart_async.Future<ProfilerTakeTypeProfileResponse> takeTypeProfile() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Profiler.takeTypeProfile', params)
        .then((response) => new ProfilerTakeTypeProfileResponse(response));
  }

/**  */
  dart_async.Stream get onConsoleProfileFinished =>
      _onConsoleProfileFinished.stream;
/** Sent when new profile recording is started using console.profile() call. */
  dart_async.Stream get onConsoleProfileStarted =>
      _onConsoleProfileStarted.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'Profiler.consoleProfileFinished', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Profiler.consoleProfileStarted', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onConsoleProfileFinished.close();
    _onConsoleProfileStarted.close();
  }
}

class RuntimeAwaitPromiseResponse {
  RuntimeAwaitPromiseResponse(Map map) {
    result = map['result'];
    exceptionDetails = map['exceptionDetails'];
  }

  RemoteObject result;

  ExceptionDetails exceptionDetails;
}

class RuntimeCallFunctionOnResponse {
  RuntimeCallFunctionOnResponse(Map map) {
    result = map['result'];
    exceptionDetails = map['exceptionDetails'];
  }

  RemoteObject result;

  ExceptionDetails exceptionDetails;
}

class RuntimeCompileScriptResponse {
  RuntimeCompileScriptResponse(Map map) {
    scriptId = map['scriptId'];
    exceptionDetails = map['exceptionDetails'];
  }

  String scriptId;

  ExceptionDetails exceptionDetails;
}

class RuntimeEvaluateResponse {
  RuntimeEvaluateResponse(Map map) {
    result = map['result'];
    exceptionDetails = map['exceptionDetails'];
  }

  RemoteObject result;

  ExceptionDetails exceptionDetails;
}

class RuntimeGetPropertiesResponse {
  RuntimeGetPropertiesResponse(Map map) {
    result = map['result'];
    internalProperties = map['internalProperties'];
    exceptionDetails = map['exceptionDetails'];
  }

  List<PropertyDescriptor> result;

  List<InternalPropertyDescriptor> internalProperties;

  ExceptionDetails exceptionDetails;
}

class RuntimeGlobalLexicalScopeNamesResponse {
  RuntimeGlobalLexicalScopeNamesResponse(Map map) {
    names = map['names'];
  }

  List names;
}

class RuntimeQueryObjectsResponse {
  RuntimeQueryObjectsResponse(Map map) {
    objects = map['objects'];
  }

  RemoteObject objects;
}

class RuntimeRunScriptResponse {
  RuntimeRunScriptResponse(Map map) {
    result = map['result'];
    exceptionDetails = map['exceptionDetails'];
  }

  RemoteObject result;

  ExceptionDetails exceptionDetails;
}

class DevToolsRuntime {
  DevToolsRuntime(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onConsoleAPICalled =
      new dart_async.StreamController();

  dart_async.StreamController _onExceptionRevoked =
      new dart_async.StreamController();

  dart_async.StreamController _onExceptionThrown =
      new dart_async.StreamController();

  dart_async.StreamController _onExecutionContextCreated =
      new dart_async.StreamController();

  dart_async.StreamController _onExecutionContextDestroyed =
      new dart_async.StreamController();

  dart_async.StreamController _onExecutionContextsCleared =
      new dart_async.StreamController();

  dart_async.StreamController _onInspectRequested =
      new dart_async.StreamController();

/** Add handler to promise with given promise object id. */
  dart_async.Future<RuntimeAwaitPromiseResponse> awaitPromise(
      {String promiseObjectId, bool returnByValue, bool generatePreview}) {
    var params = {};
    if (promiseObjectId != null) params['promiseObjectId'] = promiseObjectId;

    if (returnByValue != null) params['returnByValue'] = returnByValue;

    if (generatePreview != null) params['generatePreview'] = generatePreview;

    return _devtools.rpc
        .sendRequest('Runtime.awaitPromise', params)
        .then((response) => new RuntimeAwaitPromiseResponse(response));
  }

/** Calls function with given declaration on the given object. Object group of the result is
inherited from the target object. */
  dart_async.Future<RuntimeCallFunctionOnResponse> callFunctionOn(
      {String functionDeclaration,
      String objectId,
      List<CallArgument> arguments,
      bool silent,
      bool returnByValue,
      bool generatePreview,
      bool userGesture,
      bool awaitPromise,
      int executionContextId,
      String objectGroup}) {
    var params = {};
    if (functionDeclaration != null)
      params['functionDeclaration'] = functionDeclaration;

    if (objectId != null) params['objectId'] = objectId;

    if (arguments != null) params['arguments'] = arguments;

    if (silent != null) params['silent'] = silent;

    if (returnByValue != null) params['returnByValue'] = returnByValue;

    if (generatePreview != null) params['generatePreview'] = generatePreview;

    if (userGesture != null) params['userGesture'] = userGesture;

    if (awaitPromise != null) params['awaitPromise'] = awaitPromise;

    if (executionContextId != null)
      params['executionContextId'] = executionContextId;

    if (objectGroup != null) params['objectGroup'] = objectGroup;

    return _devtools.rpc
        .sendRequest('Runtime.callFunctionOn', params)
        .then((response) => new RuntimeCallFunctionOnResponse(response));
  }

/** Compiles expression. */
  dart_async.Future<RuntimeCompileScriptResponse> compileScript(
      {String expression,
      String sourceURL,
      bool persistScript,
      int executionContextId}) {
    var params = {};
    if (expression != null) params['expression'] = expression;

    if (sourceURL != null) params['sourceURL'] = sourceURL;

    if (persistScript != null) params['persistScript'] = persistScript;

    if (executionContextId != null)
      params['executionContextId'] = executionContextId;

    return _devtools.rpc
        .sendRequest('Runtime.compileScript', params)
        .then((response) => new RuntimeCompileScriptResponse(response));
  }

/** Disables reporting of execution contexts creation. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Runtime.disable', params);
  }

/** Discards collected exceptions and console API calls. */
  dart_async.Future discardConsoleEntries() {
    var params = {};
    return _devtools.rpc.sendRequest('Runtime.discardConsoleEntries', params);
  }

/** Enables reporting of execution contexts creation by means of `executionContextCreated` event.
When the reporting gets enabled the event will be sent immediately for each existing execution
context. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Runtime.enable', params);
  }

/** Evaluates expression on global object. */
  dart_async.Future<RuntimeEvaluateResponse> evaluate(
      {String expression,
      String objectGroup,
      bool includeCommandLineAPI,
      bool silent,
      int contextId,
      bool returnByValue,
      bool generatePreview,
      bool userGesture,
      bool awaitPromise}) {
    var params = {};
    if (expression != null) params['expression'] = expression;

    if (objectGroup != null) params['objectGroup'] = objectGroup;

    if (includeCommandLineAPI != null)
      params['includeCommandLineAPI'] = includeCommandLineAPI;

    if (silent != null) params['silent'] = silent;

    if (contextId != null) params['contextId'] = contextId;

    if (returnByValue != null) params['returnByValue'] = returnByValue;

    if (generatePreview != null) params['generatePreview'] = generatePreview;

    if (userGesture != null) params['userGesture'] = userGesture;

    if (awaitPromise != null) params['awaitPromise'] = awaitPromise;

    return _devtools.rpc
        .sendRequest('Runtime.evaluate', params)
        .then((response) => new RuntimeEvaluateResponse(response));
  }

/** Returns properties of a given object. Object group of the result is inherited from the target
object. */
  dart_async.Future<RuntimeGetPropertiesResponse> getProperties(
      {String objectId,
      bool ownProperties,
      bool accessorPropertiesOnly,
      bool generatePreview}) {
    var params = {};
    if (objectId != null) params['objectId'] = objectId;

    if (ownProperties != null) params['ownProperties'] = ownProperties;

    if (accessorPropertiesOnly != null)
      params['accessorPropertiesOnly'] = accessorPropertiesOnly;

    if (generatePreview != null) params['generatePreview'] = generatePreview;

    return _devtools.rpc
        .sendRequest('Runtime.getProperties', params)
        .then((response) => new RuntimeGetPropertiesResponse(response));
  }

/** Returns all let, const and class variables from global scope. */
  dart_async.Future<RuntimeGlobalLexicalScopeNamesResponse>
      globalLexicalScopeNames({int executionContextId}) {
    var params = {};
    if (executionContextId != null)
      params['executionContextId'] = executionContextId;

    return _devtools.rpc
        .sendRequest('Runtime.globalLexicalScopeNames', params)
        .then(
            (response) => new RuntimeGlobalLexicalScopeNamesResponse(response));
  }

/**  */
  dart_async.Future<RuntimeQueryObjectsResponse> queryObjects(
      {String prototypeObjectId}) {
    var params = {};
    if (prototypeObjectId != null)
      params['prototypeObjectId'] = prototypeObjectId;

    return _devtools.rpc
        .sendRequest('Runtime.queryObjects', params)
        .then((response) => new RuntimeQueryObjectsResponse(response));
  }

/** Releases remote object with given id. */
  dart_async.Future releaseObject({String objectId}) {
    var params = {};
    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc.sendRequest('Runtime.releaseObject', params);
  }

/** Releases all remote objects that belong to a given group. */
  dart_async.Future releaseObjectGroup({String objectGroup}) {
    var params = {};
    if (objectGroup != null) params['objectGroup'] = objectGroup;

    return _devtools.rpc.sendRequest('Runtime.releaseObjectGroup', params);
  }

/** Tells inspected instance to run if it was waiting for debugger to attach. */
  dart_async.Future runIfWaitingForDebugger() {
    var params = {};
    return _devtools.rpc.sendRequest('Runtime.runIfWaitingForDebugger', params);
  }

/** Runs script with given id in a given context. */
  dart_async.Future<RuntimeRunScriptResponse> runScript(
      {String scriptId,
      int executionContextId,
      String objectGroup,
      bool silent,
      bool includeCommandLineAPI,
      bool returnByValue,
      bool generatePreview,
      bool awaitPromise}) {
    var params = {};
    if (scriptId != null) params['scriptId'] = scriptId;

    if (executionContextId != null)
      params['executionContextId'] = executionContextId;

    if (objectGroup != null) params['objectGroup'] = objectGroup;

    if (silent != null) params['silent'] = silent;

    if (includeCommandLineAPI != null)
      params['includeCommandLineAPI'] = includeCommandLineAPI;

    if (returnByValue != null) params['returnByValue'] = returnByValue;

    if (generatePreview != null) params['generatePreview'] = generatePreview;

    if (awaitPromise != null) params['awaitPromise'] = awaitPromise;

    return _devtools.rpc
        .sendRequest('Runtime.runScript', params)
        .then((response) => new RuntimeRunScriptResponse(response));
  }

/**  */
  dart_async.Future setCustomObjectFormatterEnabled({bool enabled}) {
    var params = {};
    if (enabled != null) params['enabled'] = enabled;

    return _devtools.rpc
        .sendRequest('Runtime.setCustomObjectFormatterEnabled', params);
  }

/** Issued when console API was called. */
  dart_async.Stream get onConsoleAPICalled => _onConsoleAPICalled.stream;
/** Issued when unhandled exception was revoked. */
  dart_async.Stream get onExceptionRevoked => _onExceptionRevoked.stream;
/** Issued when exception was thrown and unhandled. */
  dart_async.Stream get onExceptionThrown => _onExceptionThrown.stream;
/** Issued when new execution context is created. */
  dart_async.Stream get onExecutionContextCreated =>
      _onExecutionContextCreated.stream;
/** Issued when execution context is destroyed. */
  dart_async.Stream get onExecutionContextDestroyed =>
      _onExecutionContextDestroyed.stream;
/** Issued when all executionContexts were cleared in browser */
  dart_async.Stream get onExecutionContextsCleared =>
      _onExecutionContextsCleared.stream;
/** Issued when object should be inspected (for example, as a result of inspect() command line API
call). */
  dart_async.Stream get onInspectRequested => _onInspectRequested.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'Runtime.consoleAPICalled', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Runtime.exceptionRevoked', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Runtime.exceptionThrown', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Runtime.executionContextCreated', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Runtime.executionContextDestroyed', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Runtime.executionContextsCleared', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Runtime.inspectRequested', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onConsoleAPICalled.close();
    _onExceptionRevoked.close();
    _onExceptionThrown.close();
    _onExecutionContextCreated.close();
    _onExecutionContextDestroyed.close();
    _onExecutionContextsCleared.close();
    _onInspectRequested.close();
  }
}

class SchemaGetDomainsResponse {
  SchemaGetDomainsResponse(Map map) {
    domains = map['domains'];
  }

  List<Domain> domains;
}

class DevToolsSchema {
  DevToolsSchema(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Returns supported domains. */
  dart_async.Future<SchemaGetDomainsResponse> getDomains() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Schema.getDomains', params)
        .then((response) => new SchemaGetDomainsResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class AccessibilityGetPartialAXTreeResponse {
  AccessibilityGetPartialAXTreeResponse(Map map) {
    nodes = map['nodes'];
  }

  List<AXNode> nodes;
}

class DevToolsAccessibility {
  DevToolsAccessibility(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Fetches the accessibility node and partial accessibility tree for this DOM node, if it exists. */
  dart_async.Future<AccessibilityGetPartialAXTreeResponse> getPartialAXTree(
      {int nodeId, bool fetchRelatives}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (fetchRelatives != null) params['fetchRelatives'] = fetchRelatives;

    return _devtools.rpc
        .sendRequest('Accessibility.getPartialAXTree', params)
        .then(
            (response) => new AccessibilityGetPartialAXTreeResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class AnimationGetCurrentTimeResponse {
  AnimationGetCurrentTimeResponse(Map map) {
    currentTime = map['currentTime'];
  }

  num currentTime;
}

class AnimationGetPlaybackRateResponse {
  AnimationGetPlaybackRateResponse(Map map) {
    playbackRate = map['playbackRate'];
  }

  num playbackRate;
}

class AnimationResolveAnimationResponse {
  AnimationResolveAnimationResponse(Map map) {
    remoteObject = map['remoteObject'];
  }

  RemoteObject remoteObject;
}

class DevToolsAnimation {
  DevToolsAnimation(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onAnimationCanceled =
      new dart_async.StreamController();

  dart_async.StreamController _onAnimationCreated =
      new dart_async.StreamController();

  dart_async.StreamController _onAnimationStarted =
      new dart_async.StreamController();

/** Disables animation domain notifications. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Animation.disable', params);
  }

/** Enables animation domain notifications. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Animation.enable', params);
  }

/** Returns the current time of the an animation. */
  dart_async.Future<AnimationGetCurrentTimeResponse> getCurrentTime(
      {String id}) {
    var params = {};
    if (id != null) params['id'] = id;

    return _devtools.rpc
        .sendRequest('Animation.getCurrentTime', params)
        .then((response) => new AnimationGetCurrentTimeResponse(response));
  }

/** Gets the playback rate of the document timeline. */
  dart_async.Future<AnimationGetPlaybackRateResponse> getPlaybackRate() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Animation.getPlaybackRate', params)
        .then((response) => new AnimationGetPlaybackRateResponse(response));
  }

/** Releases a set of animations to no longer be manipulated. */
  dart_async.Future releaseAnimations({List animations}) {
    var params = {};
    if (animations != null) params['animations'] = animations;

    return _devtools.rpc.sendRequest('Animation.releaseAnimations', params);
  }

/** Gets the remote object of the Animation. */
  dart_async.Future<AnimationResolveAnimationResponse> resolveAnimation(
      {String animationId}) {
    var params = {};
    if (animationId != null) params['animationId'] = animationId;

    return _devtools.rpc
        .sendRequest('Animation.resolveAnimation', params)
        .then((response) => new AnimationResolveAnimationResponse(response));
  }

/** Seek a set of animations to a particular time within each animation. */
  dart_async.Future seekAnimations({List animations, num currentTime}) {
    var params = {};
    if (animations != null) params['animations'] = animations;

    if (currentTime != null) params['currentTime'] = currentTime;

    return _devtools.rpc.sendRequest('Animation.seekAnimations', params);
  }

/** Sets the paused state of a set of animations. */
  dart_async.Future setPaused({List animations, bool paused}) {
    var params = {};
    if (animations != null) params['animations'] = animations;

    if (paused != null) params['paused'] = paused;

    return _devtools.rpc.sendRequest('Animation.setPaused', params);
  }

/** Sets the playback rate of the document timeline. */
  dart_async.Future setPlaybackRate({num playbackRate}) {
    var params = {};
    if (playbackRate != null) params['playbackRate'] = playbackRate;

    return _devtools.rpc.sendRequest('Animation.setPlaybackRate', params);
  }

/** Sets the timing of an animation node. */
  dart_async.Future setTiming({String animationId, num duration, num delay}) {
    var params = {};
    if (animationId != null) params['animationId'] = animationId;

    if (duration != null) params['duration'] = duration;

    if (delay != null) params['delay'] = delay;

    return _devtools.rpc.sendRequest('Animation.setTiming', params);
  }

/** Event for when an animation has been cancelled. */
  dart_async.Stream get onAnimationCanceled => _onAnimationCanceled.stream;
/** Event for each animation that has been created. */
  dart_async.Stream get onAnimationCreated => _onAnimationCreated.stream;
/** Event for animation that has been started. */
  dart_async.Stream get onAnimationStarted => _onAnimationStarted.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'Animation.animationCanceled', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Animation.animationCreated', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Animation.animationStarted', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onAnimationCanceled.close();
    _onAnimationCreated.close();
    _onAnimationStarted.close();
  }
}

class ApplicationCacheGetApplicationCacheForFrameResponse {
  ApplicationCacheGetApplicationCacheForFrameResponse(Map map) {
    applicationCache = map['applicationCache'];
  }

  ApplicationCache applicationCache;
}

class ApplicationCacheGetFramesWithManifestsResponse {
  ApplicationCacheGetFramesWithManifestsResponse(Map map) {
    frameIds = map['frameIds'];
  }

  List<FrameWithManifest> frameIds;
}

class ApplicationCacheGetManifestForFrameResponse {
  ApplicationCacheGetManifestForFrameResponse(Map map) {
    manifestURL = map['manifestURL'];
  }

  String manifestURL;
}

class DevToolsApplicationCache {
  DevToolsApplicationCache(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onApplicationCacheStatusUpdated =
      new dart_async.StreamController();

  dart_async.StreamController _onNetworkStateUpdated =
      new dart_async.StreamController();

/** Enables application cache domain notifications. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('ApplicationCache.enable', params);
  }

/** Returns relevant application cache data for the document in given frame. */
  dart_async.Future<ApplicationCacheGetApplicationCacheForFrameResponse>
      getApplicationCacheForFrame({String frameId}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    return _devtools.rpc
        .sendRequest('ApplicationCache.getApplicationCacheForFrame', params)
        .then((response) =>
            new ApplicationCacheGetApplicationCacheForFrameResponse(response));
  }

/** Returns array of frame identifiers with manifest urls for each frame containing a document
associated with some application cache. */
  dart_async.Future<ApplicationCacheGetFramesWithManifestsResponse>
      getFramesWithManifests() {
    var params = {};
    return _devtools.rpc
        .sendRequest('ApplicationCache.getFramesWithManifests', params)
        .then((response) =>
            new ApplicationCacheGetFramesWithManifestsResponse(response));
  }

/** Returns manifest URL for document in the given frame. */
  dart_async.Future<ApplicationCacheGetManifestForFrameResponse>
      getManifestForFrame({String frameId}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    return _devtools.rpc
        .sendRequest('ApplicationCache.getManifestForFrame', params)
        .then((response) =>
            new ApplicationCacheGetManifestForFrameResponse(response));
  }

/**  */
  dart_async.Stream get onApplicationCacheStatusUpdated =>
      _onApplicationCacheStatusUpdated.stream;
/**  */
  dart_async.Stream get onNetworkStateUpdated => _onNetworkStateUpdated.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('ApplicationCache.applicationCacheStatusUpdated',
        (json_rpc_2.Parameters params) {});

    rpc.registerMethod('ApplicationCache.networkStateUpdated',
        (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onApplicationCacheStatusUpdated.close();
    _onNetworkStateUpdated.close();
  }
}

class AuditsGetEncodedResponseResponse {
  AuditsGetEncodedResponseResponse(Map map) {
    body = map['body'];
    originalSize = map['originalSize'];
    encodedSize = map['encodedSize'];
  }

  String body;

  int originalSize;

  int encodedSize;
}

class DevToolsAudits {
  DevToolsAudits(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Returns the response body and size if it were re-encoded with the specified settings. Only
applies to images. */
  dart_async.Future<AuditsGetEncodedResponseResponse> getEncodedResponse(
      {String requestId, String encoding, num quality, bool sizeOnly}) {
    var params = {};
    if (requestId != null) params['requestId'] = requestId;

    if (encoding != null) params['encoding'] = encoding;

    if (quality != null) params['quality'] = quality;

    if (sizeOnly != null) params['sizeOnly'] = sizeOnly;

    return _devtools.rpc
        .sendRequest('Audits.getEncodedResponse', params)
        .then((response) => new AuditsGetEncodedResponseResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class BrowserGetVersionResponse {
  BrowserGetVersionResponse(Map map) {
    protocolVersion = map['protocolVersion'];
    product = map['product'];
    revision = map['revision'];
    userAgent = map['userAgent'];
    jsVersion = map['jsVersion'];
  }

  String protocolVersion;

  String product;

  String revision;

  String userAgent;

  String jsVersion;
}

class BrowserGetHistogramsResponse {
  BrowserGetHistogramsResponse(Map map) {
    histograms = map['histograms'];
  }

  List<Histogram> histograms;
}

class BrowserGetHistogramResponse {
  BrowserGetHistogramResponse(Map map) {
    histogram = map['histogram'];
  }

  Histogram histogram;
}

class BrowserGetWindowBoundsResponse {
  BrowserGetWindowBoundsResponse(Map map) {
    bounds = map['bounds'];
  }

  Bounds bounds;
}

class BrowserGetWindowForTargetResponse {
  BrowserGetWindowForTargetResponse(Map map) {
    windowId = map['windowId'];
    bounds = map['bounds'];
  }

  int windowId;

  Bounds bounds;
}

class DevToolsBrowser {
  DevToolsBrowser(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Close browser gracefully. */
  dart_async.Future close() {
    var params = {};
    return _devtools.rpc.sendRequest('Browser.close', params);
  }

/** Returns version information. */
  dart_async.Future<BrowserGetVersionResponse> getVersion() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Browser.getVersion', params)
        .then((response) => new BrowserGetVersionResponse(response));
  }

/** Get Chrome histograms. */
  dart_async.Future<BrowserGetHistogramsResponse> getHistograms(
      {String query}) {
    var params = {};
    if (query != null) params['query'] = query;

    return _devtools.rpc
        .sendRequest('Browser.getHistograms', params)
        .then((response) => new BrowserGetHistogramsResponse(response));
  }

/** Get a Chrome histogram by name. */
  dart_async.Future<BrowserGetHistogramResponse> getHistogram({String name}) {
    var params = {};
    if (name != null) params['name'] = name;

    return _devtools.rpc
        .sendRequest('Browser.getHistogram', params)
        .then((response) => new BrowserGetHistogramResponse(response));
  }

/** Get position and size of the browser window. */
  dart_async.Future<BrowserGetWindowBoundsResponse> getWindowBounds(
      {int windowId}) {
    var params = {};
    if (windowId != null) params['windowId'] = windowId;

    return _devtools.rpc
        .sendRequest('Browser.getWindowBounds', params)
        .then((response) => new BrowserGetWindowBoundsResponse(response));
  }

/** Get the browser window that contains the devtools target. */
  dart_async.Future<BrowserGetWindowForTargetResponse> getWindowForTarget(
      {String targetId}) {
    var params = {};
    if (targetId != null) params['targetId'] = targetId;

    return _devtools.rpc
        .sendRequest('Browser.getWindowForTarget', params)
        .then((response) => new BrowserGetWindowForTargetResponse(response));
  }

/** Set position and/or size of the browser window. */
  dart_async.Future setWindowBounds({int windowId, Bounds bounds}) {
    var params = {};
    if (windowId != null) params['windowId'] = windowId;

    if (bounds != null) params['bounds'] = bounds;

    return _devtools.rpc.sendRequest('Browser.setWindowBounds', params);
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class CSSAddRuleResponse {
  CSSAddRuleResponse(Map map) {
    rule = map['rule'];
  }

  CSSRule rule;
}

class CSSCollectClassNamesResponse {
  CSSCollectClassNamesResponse(Map map) {
    classNames = map['classNames'];
  }

  List classNames;
}

class CSSCreateStyleSheetResponse {
  CSSCreateStyleSheetResponse(Map map) {
    styleSheetId = map['styleSheetId'];
  }

  String styleSheetId;
}

class CSSGetBackgroundColorsResponse {
  CSSGetBackgroundColorsResponse(Map map) {
    backgroundColors = map['backgroundColors'];
    computedFontSize = map['computedFontSize'];
    computedFontWeight = map['computedFontWeight'];
    computedBodyFontSize = map['computedBodyFontSize'];
  }

  List backgroundColors;

  String computedFontSize;

  String computedFontWeight;

  String computedBodyFontSize;
}

class CSSGetComputedStyleForNodeResponse {
  CSSGetComputedStyleForNodeResponse(Map map) {
    computedStyle = map['computedStyle'];
  }

  List<CSSComputedStyleProperty> computedStyle;
}

class CSSGetInlineStylesForNodeResponse {
  CSSGetInlineStylesForNodeResponse(Map map) {
    inlineStyle = map['inlineStyle'];
    attributesStyle = map['attributesStyle'];
  }

  CSSStyle inlineStyle;

  CSSStyle attributesStyle;
}

class CSSGetMatchedStylesForNodeResponse {
  CSSGetMatchedStylesForNodeResponse(Map map) {
    inlineStyle = map['inlineStyle'];
    attributesStyle = map['attributesStyle'];
    matchedCSSRules = map['matchedCSSRules'];
    pseudoElements = map['pseudoElements'];
    inherited = map['inherited'];
    cssKeyframesRules = map['cssKeyframesRules'];
  }

  CSSStyle inlineStyle;

  CSSStyle attributesStyle;

  List<RuleMatch> matchedCSSRules;

  List<PseudoElementMatches> pseudoElements;

  List<InheritedStyleEntry> inherited;

  List<CSSKeyframesRule> cssKeyframesRules;
}

class CSSGetMediaQueriesResponse {
  CSSGetMediaQueriesResponse(Map map) {
    medias = map['medias'];
  }

  List<CSSMedia> medias;
}

class CSSGetPlatformFontsForNodeResponse {
  CSSGetPlatformFontsForNodeResponse(Map map) {
    fonts = map['fonts'];
  }

  List<PlatformFontUsage> fonts;
}

class CSSGetStyleSheetTextResponse {
  CSSGetStyleSheetTextResponse(Map map) {
    text = map['text'];
  }

  String text;
}

class CSSSetKeyframeKeyResponse {
  CSSSetKeyframeKeyResponse(Map map) {
    keyText = map['keyText'];
  }

  Value keyText;
}

class CSSSetMediaTextResponse {
  CSSSetMediaTextResponse(Map map) {
    media = map['media'];
  }

  CSSMedia media;
}

class CSSSetRuleSelectorResponse {
  CSSSetRuleSelectorResponse(Map map) {
    selectorList = map['selectorList'];
  }

  SelectorList selectorList;
}

class CSSSetStyleSheetTextResponse {
  CSSSetStyleSheetTextResponse(Map map) {
    sourceMapURL = map['sourceMapURL'];
  }

  String sourceMapURL;
}

class CSSSetStyleTextsResponse {
  CSSSetStyleTextsResponse(Map map) {
    styles = map['styles'];
  }

  List<CSSStyle> styles;
}

class CSSStopRuleUsageTrackingResponse {
  CSSStopRuleUsageTrackingResponse(Map map) {
    ruleUsage = map['ruleUsage'];
  }

  List<RuleUsage> ruleUsage;
}

class CSSTakeCoverageDeltaResponse {
  CSSTakeCoverageDeltaResponse(Map map) {
    coverage = map['coverage'];
  }

  List<RuleUsage> coverage;
}

class DevToolsCSS {
  DevToolsCSS(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onFontsUpdated =
      new dart_async.StreamController();

  dart_async.StreamController _onMediaQueryResultChanged =
      new dart_async.StreamController();

  dart_async.StreamController _onStyleSheetAdded =
      new dart_async.StreamController();

  dart_async.StreamController _onStyleSheetChanged =
      new dart_async.StreamController();

  dart_async.StreamController _onStyleSheetRemoved =
      new dart_async.StreamController();

/** Inserts a new rule with the given `ruleText` in a stylesheet with given `styleSheetId`, at the
position specified by `location`. */
  dart_async.Future<CSSAddRuleResponse> addRule(
      {String styleSheetId, String ruleText, SourceRange location}) {
    var params = {};
    if (styleSheetId != null) params['styleSheetId'] = styleSheetId;

    if (ruleText != null) params['ruleText'] = ruleText;

    if (location != null) params['location'] = location;

    return _devtools.rpc
        .sendRequest('CSS.addRule', params)
        .then((response) => new CSSAddRuleResponse(response));
  }

/** Returns all class names from specified stylesheet. */
  dart_async.Future<CSSCollectClassNamesResponse> collectClassNames(
      {String styleSheetId}) {
    var params = {};
    if (styleSheetId != null) params['styleSheetId'] = styleSheetId;

    return _devtools.rpc
        .sendRequest('CSS.collectClassNames', params)
        .then((response) => new CSSCollectClassNamesResponse(response));
  }

/** Creates a new special "via-inspector" stylesheet in the frame with given `frameId`. */
  dart_async.Future<CSSCreateStyleSheetResponse> createStyleSheet(
      {String frameId}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    return _devtools.rpc
        .sendRequest('CSS.createStyleSheet', params)
        .then((response) => new CSSCreateStyleSheetResponse(response));
  }

/** Disables the CSS agent for the given page. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('CSS.disable', params);
  }

/** Enables the CSS agent for the given page. Clients should not assume that the CSS agent has been
enabled until the result of this command is received. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('CSS.enable', params);
  }

/** Ensures that the given node will have specified pseudo-classes whenever its style is computed by
the browser. */
  dart_async.Future forcePseudoState({int nodeId, List forcedPseudoClasses}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (forcedPseudoClasses != null)
      params['forcedPseudoClasses'] = forcedPseudoClasses;

    return _devtools.rpc.sendRequest('CSS.forcePseudoState', params);
  }

/**  */
  dart_async.Future<CSSGetBackgroundColorsResponse> getBackgroundColors(
      {int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('CSS.getBackgroundColors', params)
        .then((response) => new CSSGetBackgroundColorsResponse(response));
  }

/** Returns the computed style for a DOM node identified by `nodeId`. */
  dart_async.Future<CSSGetComputedStyleForNodeResponse> getComputedStyleForNode(
      {int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('CSS.getComputedStyleForNode', params)
        .then((response) => new CSSGetComputedStyleForNodeResponse(response));
  }

/** Returns the styles defined inline (explicitly in the "style" attribute and implicitly, using DOM
attributes) for a DOM node identified by `nodeId`. */
  dart_async.Future<CSSGetInlineStylesForNodeResponse> getInlineStylesForNode(
      {int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('CSS.getInlineStylesForNode', params)
        .then((response) => new CSSGetInlineStylesForNodeResponse(response));
  }

/** Returns requested styles for a DOM node identified by `nodeId`. */
  dart_async.Future<CSSGetMatchedStylesForNodeResponse> getMatchedStylesForNode(
      {int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('CSS.getMatchedStylesForNode', params)
        .then((response) => new CSSGetMatchedStylesForNodeResponse(response));
  }

/** Returns all media queries parsed by the rendering engine. */
  dart_async.Future<CSSGetMediaQueriesResponse> getMediaQueries() {
    var params = {};
    return _devtools.rpc
        .sendRequest('CSS.getMediaQueries', params)
        .then((response) => new CSSGetMediaQueriesResponse(response));
  }

/** Requests information about platform fonts which we used to render child TextNodes in the given
node. */
  dart_async.Future<CSSGetPlatformFontsForNodeResponse> getPlatformFontsForNode(
      {int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('CSS.getPlatformFontsForNode', params)
        .then((response) => new CSSGetPlatformFontsForNodeResponse(response));
  }

/** Returns the current textual content and the URL for a stylesheet. */
  dart_async.Future<CSSGetStyleSheetTextResponse> getStyleSheetText(
      {String styleSheetId}) {
    var params = {};
    if (styleSheetId != null) params['styleSheetId'] = styleSheetId;

    return _devtools.rpc
        .sendRequest('CSS.getStyleSheetText', params)
        .then((response) => new CSSGetStyleSheetTextResponse(response));
  }

/** Find a rule with the given active property for the given node and set the new value for this
property */
  dart_async.Future setEffectivePropertyValueForNode(
      {int nodeId, String propertyName, String value}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (propertyName != null) params['propertyName'] = propertyName;

    if (value != null) params['value'] = value;

    return _devtools.rpc
        .sendRequest('CSS.setEffectivePropertyValueForNode', params);
  }

/** Modifies the keyframe rule key text. */
  dart_async.Future<CSSSetKeyframeKeyResponse> setKeyframeKey(
      {String styleSheetId, SourceRange range, String keyText}) {
    var params = {};
    if (styleSheetId != null) params['styleSheetId'] = styleSheetId;

    if (range != null) params['range'] = range;

    if (keyText != null) params['keyText'] = keyText;

    return _devtools.rpc
        .sendRequest('CSS.setKeyframeKey', params)
        .then((response) => new CSSSetKeyframeKeyResponse(response));
  }

/** Modifies the rule selector. */
  dart_async.Future<CSSSetMediaTextResponse> setMediaText(
      {String styleSheetId, SourceRange range, String text}) {
    var params = {};
    if (styleSheetId != null) params['styleSheetId'] = styleSheetId;

    if (range != null) params['range'] = range;

    if (text != null) params['text'] = text;

    return _devtools.rpc
        .sendRequest('CSS.setMediaText', params)
        .then((response) => new CSSSetMediaTextResponse(response));
  }

/** Modifies the rule selector. */
  dart_async.Future<CSSSetRuleSelectorResponse> setRuleSelector(
      {String styleSheetId, SourceRange range, String selector}) {
    var params = {};
    if (styleSheetId != null) params['styleSheetId'] = styleSheetId;

    if (range != null) params['range'] = range;

    if (selector != null) params['selector'] = selector;

    return _devtools.rpc
        .sendRequest('CSS.setRuleSelector', params)
        .then((response) => new CSSSetRuleSelectorResponse(response));
  }

/** Sets the new stylesheet text. */
  dart_async.Future<CSSSetStyleSheetTextResponse> setStyleSheetText(
      {String styleSheetId, String text}) {
    var params = {};
    if (styleSheetId != null) params['styleSheetId'] = styleSheetId;

    if (text != null) params['text'] = text;

    return _devtools.rpc
        .sendRequest('CSS.setStyleSheetText', params)
        .then((response) => new CSSSetStyleSheetTextResponse(response));
  }

/** Applies specified style edits one after another in the given order. */
  dart_async.Future<CSSSetStyleTextsResponse> setStyleTexts(
      {List<StyleDeclarationEdit> edits}) {
    var params = {};
    if (edits != null) params['edits'] = edits;

    return _devtools.rpc
        .sendRequest('CSS.setStyleTexts', params)
        .then((response) => new CSSSetStyleTextsResponse(response));
  }

/** Enables the selector recording. */
  dart_async.Future startRuleUsageTracking() {
    var params = {};
    return _devtools.rpc.sendRequest('CSS.startRuleUsageTracking', params);
  }

/** Stop tracking rule usage and return the list of rules that were used since last call to
`takeCoverageDelta` (or since start of coverage instrumentation) */
  dart_async.Future<CSSStopRuleUsageTrackingResponse> stopRuleUsageTracking() {
    var params = {};
    return _devtools.rpc
        .sendRequest('CSS.stopRuleUsageTracking', params)
        .then((response) => new CSSStopRuleUsageTrackingResponse(response));
  }

/** Obtain list of rules that became used since last call to this method (or since start of coverage
instrumentation) */
  dart_async.Future<CSSTakeCoverageDeltaResponse> takeCoverageDelta() {
    var params = {};
    return _devtools.rpc
        .sendRequest('CSS.takeCoverageDelta', params)
        .then((response) => new CSSTakeCoverageDeltaResponse(response));
  }

/** Fires whenever a web font gets loaded. */
  dart_async.Stream get onFontsUpdated => _onFontsUpdated.stream;
/** Fires whenever a MediaQuery result changes (for example, after a browser window has been
resized.) The current implementation considers only viewport-dependent media features. */
  dart_async.Stream get onMediaQueryResultChanged =>
      _onMediaQueryResultChanged.stream;
/** Fired whenever an active document stylesheet is added. */
  dart_async.Stream get onStyleSheetAdded => _onStyleSheetAdded.stream;
/** Fired whenever a stylesheet is changed as a result of the client operation. */
  dart_async.Stream get onStyleSheetChanged => _onStyleSheetChanged.stream;
/** Fired whenever an active document stylesheet is removed. */
  dart_async.Stream get onStyleSheetRemoved => _onStyleSheetRemoved.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('CSS.fontsUpdated', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'CSS.mediaQueryResultChanged', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'CSS.styleSheetAdded', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'CSS.styleSheetChanged', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'CSS.styleSheetRemoved', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onFontsUpdated.close();
    _onMediaQueryResultChanged.close();
    _onStyleSheetAdded.close();
    _onStyleSheetChanged.close();
    _onStyleSheetRemoved.close();
  }
}

class CacheStorageRequestCacheNamesResponse {
  CacheStorageRequestCacheNamesResponse(Map map) {
    caches = map['caches'];
  }

  List<Cache> caches;
}

class CacheStorageRequestCachedResponseResponse {
  CacheStorageRequestCachedResponseResponse(Map map) {
    response = map['response'];
  }

  CachedResponse response;
}

class CacheStorageRequestEntriesResponse {
  CacheStorageRequestEntriesResponse(Map map) {
    cacheDataEntries = map['cacheDataEntries'];
    hasMore = map['hasMore'];
  }

  List<DataEntry> cacheDataEntries;

  bool hasMore;
}

class DevToolsCacheStorage {
  DevToolsCacheStorage(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Deletes a cache. */
  dart_async.Future deleteCache({String cacheId}) {
    var params = {};
    if (cacheId != null) params['cacheId'] = cacheId;

    return _devtools.rpc.sendRequest('CacheStorage.deleteCache', params);
  }

/** Deletes a cache entry. */
  dart_async.Future deleteEntry({String cacheId, String request}) {
    var params = {};
    if (cacheId != null) params['cacheId'] = cacheId;

    if (request != null) params['request'] = request;

    return _devtools.rpc.sendRequest('CacheStorage.deleteEntry', params);
  }

/** Requests cache names. */
  dart_async.Future<CacheStorageRequestCacheNamesResponse> requestCacheNames(
      {String securityOrigin}) {
    var params = {};
    if (securityOrigin != null) params['securityOrigin'] = securityOrigin;

    return _devtools.rpc
        .sendRequest('CacheStorage.requestCacheNames', params)
        .then(
            (response) => new CacheStorageRequestCacheNamesResponse(response));
  }

/** Fetches cache entry. */
  dart_async.Future<CacheStorageRequestCachedResponseResponse>
      requestCachedResponse({String cacheId, String requestURL}) {
    var params = {};
    if (cacheId != null) params['cacheId'] = cacheId;

    if (requestURL != null) params['requestURL'] = requestURL;

    return _devtools.rpc
        .sendRequest('CacheStorage.requestCachedResponse', params)
        .then((response) =>
            new CacheStorageRequestCachedResponseResponse(response));
  }

/** Requests data from cache. */
  dart_async.Future<CacheStorageRequestEntriesResponse> requestEntries(
      {String cacheId, int skipCount, int pageSize}) {
    var params = {};
    if (cacheId != null) params['cacheId'] = cacheId;

    if (skipCount != null) params['skipCount'] = skipCount;

    if (pageSize != null) params['pageSize'] = pageSize;

    return _devtools.rpc
        .sendRequest('CacheStorage.requestEntries', params)
        .then((response) => new CacheStorageRequestEntriesResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class DOMCollectClassNamesFromSubtreeResponse {
  DOMCollectClassNamesFromSubtreeResponse(Map map) {
    classNames = map['classNames'];
  }

  List classNames;
}

class DOMCopyToResponse {
  DOMCopyToResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMDescribeNodeResponse {
  DOMDescribeNodeResponse(Map map) {
    node = map['node'];
  }

  Node node;
}

class DOMGetAttributesResponse {
  DOMGetAttributesResponse(Map map) {
    attributes = map['attributes'];
  }

  List attributes;
}

class DOMGetBoxModelResponse {
  DOMGetBoxModelResponse(Map map) {
    model = map['model'];
  }

  BoxModel model;
}

class DOMGetDocumentResponse {
  DOMGetDocumentResponse(Map map) {
    root = map['root'];
  }

  Node root;
}

class DOMGetFlattenedDocumentResponse {
  DOMGetFlattenedDocumentResponse(Map map) {
    nodes = map['nodes'];
  }

  List<Node> nodes;
}

class DOMGetNodeForLocationResponse {
  DOMGetNodeForLocationResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMGetOuterHTMLResponse {
  DOMGetOuterHTMLResponse(Map map) {
    outerHTML = map['outerHTML'];
  }

  String outerHTML;
}

class DOMGetRelayoutBoundaryResponse {
  DOMGetRelayoutBoundaryResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMGetSearchResultsResponse {
  DOMGetSearchResultsResponse(Map map) {
    nodeIds = map['nodeIds'];
  }

  List<int> nodeIds;
}

class DOMMoveToResponse {
  DOMMoveToResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMPerformSearchResponse {
  DOMPerformSearchResponse(Map map) {
    searchId = map['searchId'];
    resultCount = map['resultCount'];
  }

  String searchId;

  int resultCount;
}

class DOMPushNodeByPathToFrontendResponse {
  DOMPushNodeByPathToFrontendResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMPushNodesByBackendIdsToFrontendResponse {
  DOMPushNodesByBackendIdsToFrontendResponse(Map map) {
    nodeIds = map['nodeIds'];
  }

  List<int> nodeIds;
}

class DOMQuerySelectorResponse {
  DOMQuerySelectorResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMQuerySelectorAllResponse {
  DOMQuerySelectorAllResponse(Map map) {
    nodeIds = map['nodeIds'];
  }

  List<int> nodeIds;
}

class DOMRequestNodeResponse {
  DOMRequestNodeResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMResolveNodeResponse {
  DOMResolveNodeResponse(Map map) {
    object = map['object'];
  }

  RemoteObject object;
}

class DOMSetNodeNameResponse {
  DOMSetNodeNameResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMGetFrameOwnerResponse {
  DOMGetFrameOwnerResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DevToolsDOM {
  DevToolsDOM(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onAttributeModified =
      new dart_async.StreamController();

  dart_async.StreamController _onAttributeRemoved =
      new dart_async.StreamController();

  dart_async.StreamController _onCharacterDataModified =
      new dart_async.StreamController();

  dart_async.StreamController _onChildNodeCountUpdated =
      new dart_async.StreamController();

  dart_async.StreamController _onChildNodeInserted =
      new dart_async.StreamController();

  dart_async.StreamController _onChildNodeRemoved =
      new dart_async.StreamController();

  dart_async.StreamController _onDistributedNodesUpdated =
      new dart_async.StreamController();

  dart_async.StreamController _onDocumentUpdated =
      new dart_async.StreamController();

  dart_async.StreamController _onInlineStyleInvalidated =
      new dart_async.StreamController();

  dart_async.StreamController _onPseudoElementAdded =
      new dart_async.StreamController();

  dart_async.StreamController _onPseudoElementRemoved =
      new dart_async.StreamController();

  dart_async.StreamController _onSetChildNodes =
      new dart_async.StreamController();

  dart_async.StreamController _onShadowRootPopped =
      new dart_async.StreamController();

  dart_async.StreamController _onShadowRootPushed =
      new dart_async.StreamController();

/** Collects class names for the node with given id and all of it's child nodes. */
  dart_async.Future<DOMCollectClassNamesFromSubtreeResponse>
      collectClassNamesFromSubtree({int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('DOM.collectClassNamesFromSubtree', params)
        .then((response) =>
            new DOMCollectClassNamesFromSubtreeResponse(response));
  }

/** Creates a deep copy of the specified node and places it into the target container before the
given anchor. */
  dart_async.Future<DOMCopyToResponse> copyTo(
      {int nodeId, int targetNodeId, int insertBeforeNodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (targetNodeId != null) params['targetNodeId'] = targetNodeId;

    if (insertBeforeNodeId != null)
      params['insertBeforeNodeId'] = insertBeforeNodeId;

    return _devtools.rpc
        .sendRequest('DOM.copyTo', params)
        .then((response) => new DOMCopyToResponse(response));
  }

/** Describes node given its id, does not require domain to be enabled. Does not start tracking any
objects, can be used for automation. */
  dart_async.Future<DOMDescribeNodeResponse> describeNode(
      {int nodeId,
      int backendNodeId,
      String objectId,
      int depth,
      bool pierce}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (backendNodeId != null) params['backendNodeId'] = backendNodeId;

    if (objectId != null) params['objectId'] = objectId;

    if (depth != null) params['depth'] = depth;

    if (pierce != null) params['pierce'] = pierce;

    return _devtools.rpc
        .sendRequest('DOM.describeNode', params)
        .then((response) => new DOMDescribeNodeResponse(response));
  }

/** Disables DOM agent for the given page. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.disable', params);
  }

/** Discards search results from the session with the given id. `getSearchResults` should no longer
be called for that search. */
  dart_async.Future discardSearchResults({String searchId}) {
    var params = {};
    if (searchId != null) params['searchId'] = searchId;

    return _devtools.rpc.sendRequest('DOM.discardSearchResults', params);
  }

/** Enables DOM agent for the given page. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.enable', params);
  }

/** Focuses the given element. */
  dart_async.Future focus({int nodeId, int backendNodeId, String objectId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (backendNodeId != null) params['backendNodeId'] = backendNodeId;

    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc.sendRequest('DOM.focus', params);
  }

/** Returns attributes for the specified node. */
  dart_async.Future<DOMGetAttributesResponse> getAttributes({int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('DOM.getAttributes', params)
        .then((response) => new DOMGetAttributesResponse(response));
  }

/** Returns boxes for the given node. */
  dart_async.Future<DOMGetBoxModelResponse> getBoxModel(
      {int nodeId, int backendNodeId, String objectId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (backendNodeId != null) params['backendNodeId'] = backendNodeId;

    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc
        .sendRequest('DOM.getBoxModel', params)
        .then((response) => new DOMGetBoxModelResponse(response));
  }

/** Returns the root DOM node (and optionally the subtree) to the caller. */
  dart_async.Future<DOMGetDocumentResponse> getDocument(
      {int depth, bool pierce}) {
    var params = {};
    if (depth != null) params['depth'] = depth;

    if (pierce != null) params['pierce'] = pierce;

    return _devtools.rpc
        .sendRequest('DOM.getDocument', params)
        .then((response) => new DOMGetDocumentResponse(response));
  }

/** Returns the root DOM node (and optionally the subtree) to the caller. */
  dart_async.Future<DOMGetFlattenedDocumentResponse> getFlattenedDocument(
      {int depth, bool pierce}) {
    var params = {};
    if (depth != null) params['depth'] = depth;

    if (pierce != null) params['pierce'] = pierce;

    return _devtools.rpc
        .sendRequest('DOM.getFlattenedDocument', params)
        .then((response) => new DOMGetFlattenedDocumentResponse(response));
  }

/** Returns node id at given location. */
  dart_async.Future<DOMGetNodeForLocationResponse> getNodeForLocation(
      {int x, int y, bool includeUserAgentShadowDOM}) {
    var params = {};
    if (x != null) params['x'] = x;

    if (y != null) params['y'] = y;

    if (includeUserAgentShadowDOM != null)
      params['includeUserAgentShadowDOM'] = includeUserAgentShadowDOM;

    return _devtools.rpc
        .sendRequest('DOM.getNodeForLocation', params)
        .then((response) => new DOMGetNodeForLocationResponse(response));
  }

/** Returns node's HTML markup. */
  dart_async.Future<DOMGetOuterHTMLResponse> getOuterHTML(
      {int nodeId, int backendNodeId, String objectId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (backendNodeId != null) params['backendNodeId'] = backendNodeId;

    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc
        .sendRequest('DOM.getOuterHTML', params)
        .then((response) => new DOMGetOuterHTMLResponse(response));
  }

/** Returns the id of the nearest ancestor that is a relayout boundary. */
  dart_async.Future<DOMGetRelayoutBoundaryResponse> getRelayoutBoundary(
      {int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('DOM.getRelayoutBoundary', params)
        .then((response) => new DOMGetRelayoutBoundaryResponse(response));
  }

/** Returns search results from given `fromIndex` to given `toIndex` from the search with the given
identifier. */
  dart_async.Future<DOMGetSearchResultsResponse> getSearchResults(
      {String searchId, int fromIndex, int toIndex}) {
    var params = {};
    if (searchId != null) params['searchId'] = searchId;

    if (fromIndex != null) params['fromIndex'] = fromIndex;

    if (toIndex != null) params['toIndex'] = toIndex;

    return _devtools.rpc
        .sendRequest('DOM.getSearchResults', params)
        .then((response) => new DOMGetSearchResultsResponse(response));
  }

/** Hides any highlight. */
  dart_async.Future hideHighlight() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.hideHighlight', params);
  }

/** Highlights DOM node. */
  dart_async.Future highlightNode() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.highlightNode', params);
  }

/** Highlights given rectangle. */
  dart_async.Future highlightRect() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.highlightRect', params);
  }

/** Marks last undoable state. */
  dart_async.Future markUndoableState() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.markUndoableState', params);
  }

/** Moves node into the new container, places it before the given anchor. */
  dart_async.Future<DOMMoveToResponse> moveTo(
      {int nodeId, int targetNodeId, int insertBeforeNodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (targetNodeId != null) params['targetNodeId'] = targetNodeId;

    if (insertBeforeNodeId != null)
      params['insertBeforeNodeId'] = insertBeforeNodeId;

    return _devtools.rpc
        .sendRequest('DOM.moveTo', params)
        .then((response) => new DOMMoveToResponse(response));
  }

/** Searches for a given string in the DOM tree. Use `getSearchResults` to access search results or
`cancelSearch` to end this search session. */
  dart_async.Future<DOMPerformSearchResponse> performSearch(
      {String query, bool includeUserAgentShadowDOM}) {
    var params = {};
    if (query != null) params['query'] = query;

    if (includeUserAgentShadowDOM != null)
      params['includeUserAgentShadowDOM'] = includeUserAgentShadowDOM;

    return _devtools.rpc
        .sendRequest('DOM.performSearch', params)
        .then((response) => new DOMPerformSearchResponse(response));
  }

/** Requests that the node is sent to the caller given its path. // FIXME, use XPath */
  dart_async.Future<DOMPushNodeByPathToFrontendResponse>
      pushNodeByPathToFrontend({String path}) {
    var params = {};
    if (path != null) params['path'] = path;

    return _devtools.rpc
        .sendRequest('DOM.pushNodeByPathToFrontend', params)
        .then((response) => new DOMPushNodeByPathToFrontendResponse(response));
  }

/** Requests that a batch of nodes is sent to the caller given their backend node ids. */
  dart_async.Future<DOMPushNodesByBackendIdsToFrontendResponse>
      pushNodesByBackendIdsToFrontend({List<int> backendNodeIds}) {
    var params = {};
    if (backendNodeIds != null) params['backendNodeIds'] = backendNodeIds;

    return _devtools.rpc
        .sendRequest('DOM.pushNodesByBackendIdsToFrontend', params)
        .then((response) =>
            new DOMPushNodesByBackendIdsToFrontendResponse(response));
  }

/** Executes `querySelector` on a given node. */
  dart_async.Future<DOMQuerySelectorResponse> querySelector(
      {int nodeId, String selector}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (selector != null) params['selector'] = selector;

    return _devtools.rpc
        .sendRequest('DOM.querySelector', params)
        .then((response) => new DOMQuerySelectorResponse(response));
  }

/** Executes `querySelectorAll` on a given node. */
  dart_async.Future<DOMQuerySelectorAllResponse> querySelectorAll(
      {int nodeId, String selector}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (selector != null) params['selector'] = selector;

    return _devtools.rpc
        .sendRequest('DOM.querySelectorAll', params)
        .then((response) => new DOMQuerySelectorAllResponse(response));
  }

/** Re-does the last undone action. */
  dart_async.Future redo() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.redo', params);
  }

/** Removes attribute with given name from an element with given id. */
  dart_async.Future removeAttribute({int nodeId, String name}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (name != null) params['name'] = name;

    return _devtools.rpc.sendRequest('DOM.removeAttribute', params);
  }

/** Removes node with given id. */
  dart_async.Future removeNode({int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc.sendRequest('DOM.removeNode', params);
  }

/** Requests that children of the node with given id are returned to the caller in form of
`setChildNodes` events where not only immediate children are retrieved, but all children down to
the specified depth. */
  dart_async.Future requestChildNodes({int nodeId, int depth, bool pierce}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (depth != null) params['depth'] = depth;

    if (pierce != null) params['pierce'] = pierce;

    return _devtools.rpc.sendRequest('DOM.requestChildNodes', params);
  }

/** Requests that the node is sent to the caller given the JavaScript node object reference. All
nodes that form the path from the node to the root are also sent to the client as a series of
`setChildNodes` notifications. */
  dart_async.Future<DOMRequestNodeResponse> requestNode({String objectId}) {
    var params = {};
    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc
        .sendRequest('DOM.requestNode', params)
        .then((response) => new DOMRequestNodeResponse(response));
  }

/** Resolves the JavaScript node object for a given NodeId or BackendNodeId. */
  dart_async.Future<DOMResolveNodeResponse> resolveNode(
      {int nodeId, int backendNodeId, String objectGroup}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (backendNodeId != null) params['backendNodeId'] = backendNodeId;

    if (objectGroup != null) params['objectGroup'] = objectGroup;

    return _devtools.rpc
        .sendRequest('DOM.resolveNode', params)
        .then((response) => new DOMResolveNodeResponse(response));
  }

/** Sets attribute for an element with given id. */
  dart_async.Future setAttributeValue({int nodeId, String name, String value}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (name != null) params['name'] = name;

    if (value != null) params['value'] = value;

    return _devtools.rpc.sendRequest('DOM.setAttributeValue', params);
  }

/** Sets attributes on element with given id. This method is useful when user edits some existing
attribute value and types in several attribute name/value pairs. */
  dart_async.Future setAttributesAsText(
      {int nodeId, String text, String name}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (text != null) params['text'] = text;

    if (name != null) params['name'] = name;

    return _devtools.rpc.sendRequest('DOM.setAttributesAsText', params);
  }

/** Sets files for the given file input element. */
  dart_async.Future setFileInputFiles(
      {List files, int nodeId, int backendNodeId, String objectId}) {
    var params = {};
    if (files != null) params['files'] = files;

    if (nodeId != null) params['nodeId'] = nodeId;

    if (backendNodeId != null) params['backendNodeId'] = backendNodeId;

    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc.sendRequest('DOM.setFileInputFiles', params);
  }

/** Enables console to refer to the node with given id via $x (see Command Line API for more details
$x functions). */
  dart_async.Future setInspectedNode({int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc.sendRequest('DOM.setInspectedNode', params);
  }

/** Sets node name for a node with given id. */
  dart_async.Future<DOMSetNodeNameResponse> setNodeName(
      {int nodeId, String name}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (name != null) params['name'] = name;

    return _devtools.rpc
        .sendRequest('DOM.setNodeName', params)
        .then((response) => new DOMSetNodeNameResponse(response));
  }

/** Sets node value for a node with given id. */
  dart_async.Future setNodeValue({int nodeId, String value}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (value != null) params['value'] = value;

    return _devtools.rpc.sendRequest('DOM.setNodeValue', params);
  }

/** Sets node HTML markup, returns new node id. */
  dart_async.Future setOuterHTML({int nodeId, String outerHTML}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (outerHTML != null) params['outerHTML'] = outerHTML;

    return _devtools.rpc.sendRequest('DOM.setOuterHTML', params);
  }

/** Undoes the last performed action. */
  dart_async.Future undo() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.undo', params);
  }

/** Returns iframe node that owns iframe with the given domain. */
  dart_async.Future<DOMGetFrameOwnerResponse> getFrameOwner({String frameId}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    return _devtools.rpc
        .sendRequest('DOM.getFrameOwner', params)
        .then((response) => new DOMGetFrameOwnerResponse(response));
  }

/** Fired when `Element`'s attribute is modified. */
  dart_async.Stream get onAttributeModified => _onAttributeModified.stream;
/** Fired when `Element`'s attribute is removed. */
  dart_async.Stream get onAttributeRemoved => _onAttributeRemoved.stream;
/** Mirrors `DOMCharacterDataModified` event. */
  dart_async.Stream get onCharacterDataModified =>
      _onCharacterDataModified.stream;
/** Fired when `Container`'s child node count has changed. */
  dart_async.Stream get onChildNodeCountUpdated =>
      _onChildNodeCountUpdated.stream;
/** Mirrors `DOMNodeInserted` event. */
  dart_async.Stream get onChildNodeInserted => _onChildNodeInserted.stream;
/** Mirrors `DOMNodeRemoved` event. */
  dart_async.Stream get onChildNodeRemoved => _onChildNodeRemoved.stream;
/** Called when distrubution is changed. */
  dart_async.Stream get onDistributedNodesUpdated =>
      _onDistributedNodesUpdated.stream;
/** Fired when `Document` has been totally updated. Node ids are no longer valid. */
  dart_async.Stream get onDocumentUpdated => _onDocumentUpdated.stream;
/** Fired when `Element`'s inline style is modified via a CSS property modification. */
  dart_async.Stream get onInlineStyleInvalidated =>
      _onInlineStyleInvalidated.stream;
/** Called when a pseudo element is added to an element. */
  dart_async.Stream get onPseudoElementAdded => _onPseudoElementAdded.stream;
/** Called when a pseudo element is removed from an element. */
  dart_async.Stream get onPseudoElementRemoved =>
      _onPseudoElementRemoved.stream;
/** Fired when backend wants to provide client with the missing DOM structure. This happens upon
most of the calls requesting node ids. */
  dart_async.Stream get onSetChildNodes => _onSetChildNodes.stream;
/** Called when shadow root is popped from the element. */
  dart_async.Stream get onShadowRootPopped => _onShadowRootPopped.stream;
/** Called when shadow root is pushed into the element. */
  dart_async.Stream get onShadowRootPushed => _onShadowRootPushed.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'DOM.attributeModified', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOM.attributeRemoved', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOM.characterDataModified', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOM.childNodeCountUpdated', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOM.childNodeInserted', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOM.childNodeRemoved', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOM.distributedNodesUpdated', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOM.documentUpdated', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOM.inlineStyleInvalidated', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOM.pseudoElementAdded', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOM.pseudoElementRemoved', (json_rpc_2.Parameters params) {});

    rpc.registerMethod('DOM.setChildNodes', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOM.shadowRootPopped', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOM.shadowRootPushed', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onAttributeModified.close();
    _onAttributeRemoved.close();
    _onCharacterDataModified.close();
    _onChildNodeCountUpdated.close();
    _onChildNodeInserted.close();
    _onChildNodeRemoved.close();
    _onDistributedNodesUpdated.close();
    _onDocumentUpdated.close();
    _onInlineStyleInvalidated.close();
    _onPseudoElementAdded.close();
    _onPseudoElementRemoved.close();
    _onSetChildNodes.close();
    _onShadowRootPopped.close();
    _onShadowRootPushed.close();
  }
}

class DOMDebuggerGetEventListenersResponse {
  DOMDebuggerGetEventListenersResponse(Map map) {
    listeners = map['listeners'];
  }

  List<EventListener> listeners;
}

class DevToolsDOMDebugger {
  DevToolsDOMDebugger(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Returns event listeners of the given object. */
  dart_async.Future<DOMDebuggerGetEventListenersResponse> getEventListeners(
      {String objectId, int depth, bool pierce}) {
    var params = {};
    if (objectId != null) params['objectId'] = objectId;

    if (depth != null) params['depth'] = depth;

    if (pierce != null) params['pierce'] = pierce;

    return _devtools.rpc
        .sendRequest('DOMDebugger.getEventListeners', params)
        .then((response) => new DOMDebuggerGetEventListenersResponse(response));
  }

/** Removes DOM breakpoint that was set using `setDOMBreakpoint`. */
  dart_async.Future removeDOMBreakpoint({int nodeId, String type}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (type != null) params['type'] = type;

    return _devtools.rpc.sendRequest('DOMDebugger.removeDOMBreakpoint', params);
  }

/** Removes breakpoint on particular DOM event. */
  dart_async.Future removeEventListenerBreakpoint(
      {String eventName, String targetName}) {
    var params = {};
    if (eventName != null) params['eventName'] = eventName;

    if (targetName != null) params['targetName'] = targetName;

    return _devtools.rpc
        .sendRequest('DOMDebugger.removeEventListenerBreakpoint', params);
  }

/** Removes breakpoint on particular native event. */
  dart_async.Future removeInstrumentationBreakpoint({String eventName}) {
    var params = {};
    if (eventName != null) params['eventName'] = eventName;

    return _devtools.rpc
        .sendRequest('DOMDebugger.removeInstrumentationBreakpoint', params);
  }

/** Removes breakpoint from XMLHttpRequest. */
  dart_async.Future removeXHRBreakpoint({String url}) {
    var params = {};
    if (url != null) params['url'] = url;

    return _devtools.rpc.sendRequest('DOMDebugger.removeXHRBreakpoint', params);
  }

/** Sets breakpoint on particular operation with DOM. */
  dart_async.Future setDOMBreakpoint({int nodeId, String type}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (type != null) params['type'] = type;

    return _devtools.rpc.sendRequest('DOMDebugger.setDOMBreakpoint', params);
  }

/** Sets breakpoint on particular DOM event. */
  dart_async.Future setEventListenerBreakpoint(
      {String eventName, String targetName}) {
    var params = {};
    if (eventName != null) params['eventName'] = eventName;

    if (targetName != null) params['targetName'] = targetName;

    return _devtools.rpc
        .sendRequest('DOMDebugger.setEventListenerBreakpoint', params);
  }

/** Sets breakpoint on particular native event. */
  dart_async.Future setInstrumentationBreakpoint({String eventName}) {
    var params = {};
    if (eventName != null) params['eventName'] = eventName;

    return _devtools.rpc
        .sendRequest('DOMDebugger.setInstrumentationBreakpoint', params);
  }

/** Sets breakpoint on XMLHttpRequest. */
  dart_async.Future setXHRBreakpoint({String url}) {
    var params = {};
    if (url != null) params['url'] = url;

    return _devtools.rpc.sendRequest('DOMDebugger.setXHRBreakpoint', params);
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class DOMSnapshotGetSnapshotResponse {
  DOMSnapshotGetSnapshotResponse(Map map) {
    domNodes = map['domNodes'];
    layoutTreeNodes = map['layoutTreeNodes'];
    computedStyles = map['computedStyles'];
  }

  List<DOMNode> domNodes;

  List<LayoutTreeNode> layoutTreeNodes;

  List<ComputedStyle> computedStyles;
}

class DevToolsDOMSnapshot {
  DevToolsDOMSnapshot(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Returns a document snapshot, including the full DOM tree of the root node (including iframes,
template contents, and imported documents) in a flattened array, as well as layout and
white-listed computed style information for the nodes. Shadow DOM in the returned DOM tree is
flattened. */
  dart_async.Future<DOMSnapshotGetSnapshotResponse> getSnapshot(
      {List computedStyleWhitelist, bool includeEventListeners}) {
    var params = {};
    if (computedStyleWhitelist != null)
      params['computedStyleWhitelist'] = computedStyleWhitelist;

    if (includeEventListeners != null)
      params['includeEventListeners'] = includeEventListeners;

    return _devtools.rpc
        .sendRequest('DOMSnapshot.getSnapshot', params)
        .then((response) => new DOMSnapshotGetSnapshotResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class DOMStorageGetDOMStorageItemsResponse {
  DOMStorageGetDOMStorageItemsResponse(Map map) {
    entries = map['entries'];
  }

  List<List> entries;
}

class DevToolsDOMStorage {
  DevToolsDOMStorage(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onDomStorageItemAdded =
      new dart_async.StreamController();

  dart_async.StreamController _onDomStorageItemRemoved =
      new dart_async.StreamController();

  dart_async.StreamController _onDomStorageItemUpdated =
      new dart_async.StreamController();

  dart_async.StreamController _onDomStorageItemsCleared =
      new dart_async.StreamController();

/**  */
  dart_async.Future clear({StorageId storageId}) {
    var params = {};
    if (storageId != null) params['storageId'] = storageId;

    return _devtools.rpc.sendRequest('DOMStorage.clear', params);
  }

/** Disables storage tracking, prevents storage events from being sent to the client. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('DOMStorage.disable', params);
  }

/** Enables storage tracking, storage events will now be delivered to the client. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('DOMStorage.enable', params);
  }

/**  */
  dart_async.Future<DOMStorageGetDOMStorageItemsResponse> getDOMStorageItems(
      {StorageId storageId}) {
    var params = {};
    if (storageId != null) params['storageId'] = storageId;

    return _devtools.rpc
        .sendRequest('DOMStorage.getDOMStorageItems', params)
        .then((response) => new DOMStorageGetDOMStorageItemsResponse(response));
  }

/**  */
  dart_async.Future removeDOMStorageItem({StorageId storageId, String key}) {
    var params = {};
    if (storageId != null) params['storageId'] = storageId;

    if (key != null) params['key'] = key;

    return _devtools.rpc.sendRequest('DOMStorage.removeDOMStorageItem', params);
  }

/**  */
  dart_async.Future setDOMStorageItem(
      {StorageId storageId, String key, String value}) {
    var params = {};
    if (storageId != null) params['storageId'] = storageId;

    if (key != null) params['key'] = key;

    if (value != null) params['value'] = value;

    return _devtools.rpc.sendRequest('DOMStorage.setDOMStorageItem', params);
  }

/**  */
  dart_async.Stream get onDomStorageItemAdded => _onDomStorageItemAdded.stream;
/**  */
  dart_async.Stream get onDomStorageItemRemoved =>
      _onDomStorageItemRemoved.stream;
/**  */
  dart_async.Stream get onDomStorageItemUpdated =>
      _onDomStorageItemUpdated.stream;
/**  */
  dart_async.Stream get onDomStorageItemsCleared =>
      _onDomStorageItemsCleared.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'DOMStorage.domStorageItemAdded', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOMStorage.domStorageItemRemoved', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOMStorage.domStorageItemUpdated', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'DOMStorage.domStorageItemsCleared', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onDomStorageItemAdded.close();
    _onDomStorageItemRemoved.close();
    _onDomStorageItemUpdated.close();
    _onDomStorageItemsCleared.close();
  }
}

class DatabaseExecuteSQLResponse {
  DatabaseExecuteSQLResponse(Map map) {
    columnNames = map['columnNames'];
    values = map['values'];
    sqlError = map['sqlError'];
  }

  List columnNames;

  List values;

  Error sqlError;
}

class DatabaseGetDatabaseTableNamesResponse {
  DatabaseGetDatabaseTableNamesResponse(Map map) {
    tableNames = map['tableNames'];
  }

  List tableNames;
}

class DevToolsDatabase {
  DevToolsDatabase(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onAddDatabase =
      new dart_async.StreamController();

/** Disables database tracking, prevents database events from being sent to the client. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Database.disable', params);
  }

/** Enables database tracking, database events will now be delivered to the client. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Database.enable', params);
  }

/**  */
  dart_async.Future<DatabaseExecuteSQLResponse> executeSQL(
      {String databaseId, String query}) {
    var params = {};
    if (databaseId != null) params['databaseId'] = databaseId;

    if (query != null) params['query'] = query;

    return _devtools.rpc
        .sendRequest('Database.executeSQL', params)
        .then((response) => new DatabaseExecuteSQLResponse(response));
  }

/**  */
  dart_async.Future<DatabaseGetDatabaseTableNamesResponse>
      getDatabaseTableNames({String databaseId}) {
    var params = {};
    if (databaseId != null) params['databaseId'] = databaseId;

    return _devtools.rpc
        .sendRequest('Database.getDatabaseTableNames', params)
        .then(
            (response) => new DatabaseGetDatabaseTableNamesResponse(response));
  }

/**  */
  dart_async.Stream get onAddDatabase => _onAddDatabase.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'Database.addDatabase', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onAddDatabase.close();
  }
}

class DevToolsDeviceOrientation {
  DevToolsDeviceOrientation(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Clears the overridden Device Orientation. */
  dart_async.Future clearDeviceOrientationOverride() {
    var params = {};
    return _devtools.rpc.sendRequest(
        'DeviceOrientation.clearDeviceOrientationOverride', params);
  }

/** Overrides the Device Orientation. */
  dart_async.Future setDeviceOrientationOverride(
      {num alpha, num beta, num gamma}) {
    var params = {};
    if (alpha != null) params['alpha'] = alpha;

    if (beta != null) params['beta'] = beta;

    if (gamma != null) params['gamma'] = gamma;

    return _devtools.rpc
        .sendRequest('DeviceOrientation.setDeviceOrientationOverride', params);
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class EmulationCanEmulateResponse {
  EmulationCanEmulateResponse(Map map) {
    result = map['result'];
  }

  bool result;
}

class EmulationSetVirtualTimePolicyResponse {
  EmulationSetVirtualTimePolicyResponse(Map map) {
    virtualTimeBase = map['virtualTimeBase'];
  }

  num virtualTimeBase;
}

class DevToolsEmulation {
  DevToolsEmulation(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onVirtualTimeAdvanced =
      new dart_async.StreamController();

  dart_async.StreamController _onVirtualTimeBudgetExpired =
      new dart_async.StreamController();

  dart_async.StreamController _onVirtualTimePaused =
      new dart_async.StreamController();

/** Tells whether emulation is supported. */
  dart_async.Future<EmulationCanEmulateResponse> canEmulate() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Emulation.canEmulate', params)
        .then((response) => new EmulationCanEmulateResponse(response));
  }

/** Clears the overriden device metrics. */
  dart_async.Future clearDeviceMetricsOverride() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Emulation.clearDeviceMetricsOverride', params);
  }

/** Clears the overriden Geolocation Position and Error. */
  dart_async.Future clearGeolocationOverride() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Emulation.clearGeolocationOverride', params);
  }

/** Requests that page scale factor is reset to initial values. */
  dart_async.Future resetPageScaleFactor() {
    var params = {};
    return _devtools.rpc.sendRequest('Emulation.resetPageScaleFactor', params);
  }

/** Enables CPU throttling to emulate slow CPUs. */
  dart_async.Future setCPUThrottlingRate({num rate}) {
    var params = {};
    if (rate != null) params['rate'] = rate;

    return _devtools.rpc.sendRequest('Emulation.setCPUThrottlingRate', params);
  }

/** Sets or clears an override of the default background color of the frame. This override is used
if the content does not specify one. */
  dart_async.Future setDefaultBackgroundColorOverride({RGBA color}) {
    var params = {};
    if (color != null) params['color'] = color;

    return _devtools.rpc
        .sendRequest('Emulation.setDefaultBackgroundColorOverride', params);
  }

/** Overrides the values of device screen dimensions (window.screen.width, window.screen.height,
window.innerWidth, window.innerHeight, and "device-width"/"device-height"-related CSS media
query results). */
  dart_async.Future setDeviceMetricsOverride(
      {int width,
      int height,
      num deviceScaleFactor,
      bool mobile,
      num scale,
      int screenWidth,
      int screenHeight,
      int positionX,
      int positionY,
      bool dontSetVisibleSize,
      ScreenOrientation screenOrientation,
      Viewport viewport}) {
    var params = {};
    if (width != null) params['width'] = width;

    if (height != null) params['height'] = height;

    if (deviceScaleFactor != null)
      params['deviceScaleFactor'] = deviceScaleFactor;

    if (mobile != null) params['mobile'] = mobile;

    if (scale != null) params['scale'] = scale;

    if (screenWidth != null) params['screenWidth'] = screenWidth;

    if (screenHeight != null) params['screenHeight'] = screenHeight;

    if (positionX != null) params['positionX'] = positionX;

    if (positionY != null) params['positionY'] = positionY;

    if (dontSetVisibleSize != null)
      params['dontSetVisibleSize'] = dontSetVisibleSize;

    if (screenOrientation != null)
      params['screenOrientation'] = screenOrientation;

    if (viewport != null) params['viewport'] = viewport;

    return _devtools.rpc
        .sendRequest('Emulation.setDeviceMetricsOverride', params);
  }

/**  */
  dart_async.Future setEmitTouchEventsForMouse(
      {bool enabled, String configuration}) {
    var params = {};
    if (enabled != null) params['enabled'] = enabled;

    if (configuration != null) params['configuration'] = configuration;

    return _devtools.rpc
        .sendRequest('Emulation.setEmitTouchEventsForMouse', params);
  }

/** Emulates the given media for CSS media queries. */
  dart_async.Future setEmulatedMedia({String media}) {
    var params = {};
    if (media != null) params['media'] = media;

    return _devtools.rpc.sendRequest('Emulation.setEmulatedMedia', params);
  }

/** Overrides the Geolocation Position or Error. Omitting any of the parameters emulates position
unavailable. */
  dart_async.Future setGeolocationOverride(
      {num latitude, num longitude, num accuracy}) {
    var params = {};
    if (latitude != null) params['latitude'] = latitude;

    if (longitude != null) params['longitude'] = longitude;

    if (accuracy != null) params['accuracy'] = accuracy;

    return _devtools.rpc
        .sendRequest('Emulation.setGeolocationOverride', params);
  }

/** Overrides value returned by the javascript navigator object. */
  dart_async.Future setNavigatorOverrides({String platform}) {
    var params = {};
    if (platform != null) params['platform'] = platform;

    return _devtools.rpc.sendRequest('Emulation.setNavigatorOverrides', params);
  }

/** Sets a specified page scale factor. */
  dart_async.Future setPageScaleFactor({num pageScaleFactor}) {
    var params = {};
    if (pageScaleFactor != null) params['pageScaleFactor'] = pageScaleFactor;

    return _devtools.rpc.sendRequest('Emulation.setPageScaleFactor', params);
  }

/** Switches script execution in the page. */
  dart_async.Future setScriptExecutionDisabled({bool value}) {
    var params = {};
    if (value != null) params['value'] = value;

    return _devtools.rpc
        .sendRequest('Emulation.setScriptExecutionDisabled', params);
  }

/** Enables touch on platforms which do not support them. */
  dart_async.Future setTouchEmulationEnabled(
      {bool enabled, int maxTouchPoints}) {
    var params = {};
    if (enabled != null) params['enabled'] = enabled;

    if (maxTouchPoints != null) params['maxTouchPoints'] = maxTouchPoints;

    return _devtools.rpc
        .sendRequest('Emulation.setTouchEmulationEnabled', params);
  }

/** Turns on virtual time for all frames (replacing real-time with a synthetic time source) and sets
the current virtual time policy.  Note this supersedes any previous time budget. */
  dart_async.Future<EmulationSetVirtualTimePolicyResponse> setVirtualTimePolicy(
      {String policy,
      num budget,
      int maxVirtualTimeTaskStarvationCount,
      bool waitForNavigation}) {
    var params = {};
    if (policy != null) params['policy'] = policy;

    if (budget != null) params['budget'] = budget;

    if (maxVirtualTimeTaskStarvationCount != null)
      params['maxVirtualTimeTaskStarvationCount'] =
          maxVirtualTimeTaskStarvationCount;

    if (waitForNavigation != null)
      params['waitForNavigation'] = waitForNavigation;

    return _devtools.rpc
        .sendRequest('Emulation.setVirtualTimePolicy', params)
        .then(
            (response) => new EmulationSetVirtualTimePolicyResponse(response));
  }

/** Resizes the frame/viewport of the page. Note that this does not affect the frame's container
(e.g. browser window). Can be used to produce screenshots of the specified size. Not supported
on Android. */
  dart_async.Future setVisibleSize({int width, int height}) {
    var params = {};
    if (width != null) params['width'] = width;

    if (height != null) params['height'] = height;

    return _devtools.rpc.sendRequest('Emulation.setVisibleSize', params);
  }

/** Notification sent after the virtual time has advanced. */
  dart_async.Stream get onVirtualTimeAdvanced => _onVirtualTimeAdvanced.stream;
/** Notification sent after the virtual time budget for the current VirtualTimePolicy has run out. */
  dart_async.Stream get onVirtualTimeBudgetExpired =>
      _onVirtualTimeBudgetExpired.stream;
/** Notification sent after the virtual time has paused. */
  dart_async.Stream get onVirtualTimePaused => _onVirtualTimePaused.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'Emulation.virtualTimeAdvanced', (json_rpc_2.Parameters params) {});

    rpc.registerMethod('Emulation.virtualTimeBudgetExpired',
        (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Emulation.virtualTimePaused', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onVirtualTimeAdvanced.close();
    _onVirtualTimeBudgetExpired.close();
    _onVirtualTimePaused.close();
  }
}

class HeadlessExperimentalBeginFrameResponse {
  HeadlessExperimentalBeginFrameResponse(Map map) {
    hasDamage = map['hasDamage'];
    mainFrameContentUpdated = map['mainFrameContentUpdated'];
    screenshotData = map['screenshotData'];
  }

  bool hasDamage;

  bool mainFrameContentUpdated;

  String screenshotData;
}

class DevToolsHeadlessExperimental {
  DevToolsHeadlessExperimental(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onMainFrameReadyForScreenshots =
      new dart_async.StreamController();

  dart_async.StreamController _onNeedsBeginFramesChanged =
      new dart_async.StreamController();

/** Sends a BeginFrame to the target and returns when the frame was completed. Optionally captures a
screenshot from the resulting frame. Requires that the target was created with enabled
BeginFrameControl. */
  dart_async.Future<HeadlessExperimentalBeginFrameResponse> beginFrame(
      {num frameTime,
      num deadline,
      num interval,
      bool noDisplayUpdates,
      ScreenshotParams screenshot}) {
    var params = {};
    if (frameTime != null) params['frameTime'] = frameTime;

    if (deadline != null) params['deadline'] = deadline;

    if (interval != null) params['interval'] = interval;

    if (noDisplayUpdates != null) params['noDisplayUpdates'] = noDisplayUpdates;

    if (screenshot != null) params['screenshot'] = screenshot;

    return _devtools.rpc
        .sendRequest('HeadlessExperimental.beginFrame', params)
        .then(
            (response) => new HeadlessExperimentalBeginFrameResponse(response));
  }

/** Disables headless events for the target. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('HeadlessExperimental.disable', params);
  }

/** Enables headless events for the target. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('HeadlessExperimental.enable', params);
  }

/** Issued when the main frame has first submitted a frame to the browser. May only be fired while a
BeginFrame is in flight. Before this event, screenshotting requests may fail. */
  dart_async.Stream get onMainFrameReadyForScreenshots =>
      _onMainFrameReadyForScreenshots.stream;
/** Issued when the target starts or stops needing BeginFrames. */
  dart_async.Stream get onNeedsBeginFramesChanged =>
      _onNeedsBeginFramesChanged.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('HeadlessExperimental.mainFrameReadyForScreenshots',
        (json_rpc_2.Parameters params) {});

    rpc.registerMethod('HeadlessExperimental.needsBeginFramesChanged',
        (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onMainFrameReadyForScreenshots.close();
    _onNeedsBeginFramesChanged.close();
  }
}

class IOReadResponse {
  IOReadResponse(Map map) {
    base64Encoded = map['base64Encoded'];
    data = map['data'];
    eof = map['eof'];
  }

  bool base64Encoded;

  String data;

  bool eof;
}

class IOResolveBlobResponse {
  IOResolveBlobResponse(Map map) {
    uuid = map['uuid'];
  }

  String uuid;
}

class DevToolsIO {
  DevToolsIO(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Close the stream, discard any temporary backing storage. */
  dart_async.Future close({String handle}) {
    var params = {};
    if (handle != null) params['handle'] = handle;

    return _devtools.rpc.sendRequest('IO.close', params);
  }

/** Read a chunk of the stream */
  dart_async.Future<IOReadResponse> read(
      {String handle, int offset, int size}) {
    var params = {};
    if (handle != null) params['handle'] = handle;

    if (offset != null) params['offset'] = offset;

    if (size != null) params['size'] = size;

    return _devtools.rpc
        .sendRequest('IO.read', params)
        .then((response) => new IOReadResponse(response));
  }

/** Return UUID of Blob object specified by a remote object id. */
  dart_async.Future<IOResolveBlobResponse> resolveBlob({String objectId}) {
    var params = {};
    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc
        .sendRequest('IO.resolveBlob', params)
        .then((response) => new IOResolveBlobResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class IndexedDBRequestDataResponse {
  IndexedDBRequestDataResponse(Map map) {
    objectStoreDataEntries = map['objectStoreDataEntries'];
    hasMore = map['hasMore'];
  }

  List<DataEntry> objectStoreDataEntries;

  bool hasMore;
}

class IndexedDBRequestDatabaseResponse {
  IndexedDBRequestDatabaseResponse(Map map) {
    databaseWithObjectStores = map['databaseWithObjectStores'];
  }

  DatabaseWithObjectStores databaseWithObjectStores;
}

class IndexedDBRequestDatabaseNamesResponse {
  IndexedDBRequestDatabaseNamesResponse(Map map) {
    databaseNames = map['databaseNames'];
  }

  List databaseNames;
}

class DevToolsIndexedDB {
  DevToolsIndexedDB(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Clears all entries from an object store. */
  dart_async.Future clearObjectStore(
      {String securityOrigin, String databaseName, String objectStoreName}) {
    var params = {};
    if (securityOrigin != null) params['securityOrigin'] = securityOrigin;

    if (databaseName != null) params['databaseName'] = databaseName;

    if (objectStoreName != null) params['objectStoreName'] = objectStoreName;

    return _devtools.rpc.sendRequest('IndexedDB.clearObjectStore', params);
  }

/** Deletes a database. */
  dart_async.Future deleteDatabase(
      {String securityOrigin, String databaseName}) {
    var params = {};
    if (securityOrigin != null) params['securityOrigin'] = securityOrigin;

    if (databaseName != null) params['databaseName'] = databaseName;

    return _devtools.rpc.sendRequest('IndexedDB.deleteDatabase', params);
  }

/** Delete a range of entries from an object store */
  dart_async.Future deleteObjectStoreEntries(
      {String securityOrigin,
      String databaseName,
      String objectStoreName,
      KeyRange keyRange}) {
    var params = {};
    if (securityOrigin != null) params['securityOrigin'] = securityOrigin;

    if (databaseName != null) params['databaseName'] = databaseName;

    if (objectStoreName != null) params['objectStoreName'] = objectStoreName;

    if (keyRange != null) params['keyRange'] = keyRange;

    return _devtools.rpc
        .sendRequest('IndexedDB.deleteObjectStoreEntries', params);
  }

/** Disables events from backend. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('IndexedDB.disable', params);
  }

/** Enables events from backend. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('IndexedDB.enable', params);
  }

/** Requests data from object store or index. */
  dart_async.Future<IndexedDBRequestDataResponse> requestData(
      {String securityOrigin,
      String databaseName,
      String objectStoreName,
      String indexName,
      int skipCount,
      int pageSize,
      KeyRange keyRange}) {
    var params = {};
    if (securityOrigin != null) params['securityOrigin'] = securityOrigin;

    if (databaseName != null) params['databaseName'] = databaseName;

    if (objectStoreName != null) params['objectStoreName'] = objectStoreName;

    if (indexName != null) params['indexName'] = indexName;

    if (skipCount != null) params['skipCount'] = skipCount;

    if (pageSize != null) params['pageSize'] = pageSize;

    if (keyRange != null) params['keyRange'] = keyRange;

    return _devtools.rpc
        .sendRequest('IndexedDB.requestData', params)
        .then((response) => new IndexedDBRequestDataResponse(response));
  }

/** Requests database with given name in given frame. */
  dart_async.Future<IndexedDBRequestDatabaseResponse> requestDatabase(
      {String securityOrigin, String databaseName}) {
    var params = {};
    if (securityOrigin != null) params['securityOrigin'] = securityOrigin;

    if (databaseName != null) params['databaseName'] = databaseName;

    return _devtools.rpc
        .sendRequest('IndexedDB.requestDatabase', params)
        .then((response) => new IndexedDBRequestDatabaseResponse(response));
  }

/** Requests database names for given security origin. */
  dart_async.Future<IndexedDBRequestDatabaseNamesResponse> requestDatabaseNames(
      {String securityOrigin}) {
    var params = {};
    if (securityOrigin != null) params['securityOrigin'] = securityOrigin;

    return _devtools.rpc
        .sendRequest('IndexedDB.requestDatabaseNames', params)
        .then(
            (response) => new IndexedDBRequestDatabaseNamesResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class DevToolsInput {
  DevToolsInput(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Dispatches a key event to the page. */
  dart_async.Future dispatchKeyEvent(
      {String type,
      int modifiers,
      num timestamp,
      String text,
      String unmodifiedText,
      String keyIdentifier,
      String code,
      String key,
      int windowsVirtualKeyCode,
      int nativeVirtualKeyCode,
      bool autoRepeat,
      bool isKeypad,
      bool isSystemKey,
      int location}) {
    var params = {};
    if (type != null) params['type'] = type;

    if (modifiers != null) params['modifiers'] = modifiers;

    if (timestamp != null) params['timestamp'] = timestamp;

    if (text != null) params['text'] = text;

    if (unmodifiedText != null) params['unmodifiedText'] = unmodifiedText;

    if (keyIdentifier != null) params['keyIdentifier'] = keyIdentifier;

    if (code != null) params['code'] = code;

    if (key != null) params['key'] = key;

    if (windowsVirtualKeyCode != null)
      params['windowsVirtualKeyCode'] = windowsVirtualKeyCode;

    if (nativeVirtualKeyCode != null)
      params['nativeVirtualKeyCode'] = nativeVirtualKeyCode;

    if (autoRepeat != null) params['autoRepeat'] = autoRepeat;

    if (isKeypad != null) params['isKeypad'] = isKeypad;

    if (isSystemKey != null) params['isSystemKey'] = isSystemKey;

    if (location != null) params['location'] = location;

    return _devtools.rpc.sendRequest('Input.dispatchKeyEvent', params);
  }

/** Dispatches a mouse event to the page. */
  dart_async.Future dispatchMouseEvent(
      {String type,
      num x,
      num y,
      int modifiers,
      num timestamp,
      String button,
      int clickCount,
      num deltaX,
      num deltaY}) {
    var params = {};
    if (type != null) params['type'] = type;

    if (x != null) params['x'] = x;

    if (y != null) params['y'] = y;

    if (modifiers != null) params['modifiers'] = modifiers;

    if (timestamp != null) params['timestamp'] = timestamp;

    if (button != null) params['button'] = button;

    if (clickCount != null) params['clickCount'] = clickCount;

    if (deltaX != null) params['deltaX'] = deltaX;

    if (deltaY != null) params['deltaY'] = deltaY;

    return _devtools.rpc.sendRequest('Input.dispatchMouseEvent', params);
  }

/** Dispatches a touch event to the page. */
  dart_async.Future dispatchTouchEvent(
      {String type,
      List<TouchPoint> touchPoints,
      int modifiers,
      num timestamp}) {
    var params = {};
    if (type != null) params['type'] = type;

    if (touchPoints != null) params['touchPoints'] = touchPoints;

    if (modifiers != null) params['modifiers'] = modifiers;

    if (timestamp != null) params['timestamp'] = timestamp;

    return _devtools.rpc.sendRequest('Input.dispatchTouchEvent', params);
  }

/** Emulates touch event from the mouse event parameters. */
  dart_async.Future emulateTouchFromMouseEvent(
      {String type,
      int x,
      int y,
      String button,
      num timestamp,
      num deltaX,
      num deltaY,
      int modifiers,
      int clickCount}) {
    var params = {};
    if (type != null) params['type'] = type;

    if (x != null) params['x'] = x;

    if (y != null) params['y'] = y;

    if (button != null) params['button'] = button;

    if (timestamp != null) params['timestamp'] = timestamp;

    if (deltaX != null) params['deltaX'] = deltaX;

    if (deltaY != null) params['deltaY'] = deltaY;

    if (modifiers != null) params['modifiers'] = modifiers;

    if (clickCount != null) params['clickCount'] = clickCount;

    return _devtools.rpc
        .sendRequest('Input.emulateTouchFromMouseEvent', params);
  }

/** Ignores input events (useful while auditing page). */
  dart_async.Future setIgnoreInputEvents({bool ignore}) {
    var params = {};
    if (ignore != null) params['ignore'] = ignore;

    return _devtools.rpc.sendRequest('Input.setIgnoreInputEvents', params);
  }

/** Synthesizes a pinch gesture over a time period by issuing appropriate touch events. */
  dart_async.Future synthesizePinchGesture(
      {num x,
      num y,
      num scaleFactor,
      int relativeSpeed,
      String gestureSourceType}) {
    var params = {};
    if (x != null) params['x'] = x;

    if (y != null) params['y'] = y;

    if (scaleFactor != null) params['scaleFactor'] = scaleFactor;

    if (relativeSpeed != null) params['relativeSpeed'] = relativeSpeed;

    if (gestureSourceType != null)
      params['gestureSourceType'] = gestureSourceType;

    return _devtools.rpc.sendRequest('Input.synthesizePinchGesture', params);
  }

/** Synthesizes a scroll gesture over a time period by issuing appropriate touch events. */
  dart_async.Future synthesizeScrollGesture(
      {num x,
      num y,
      num xDistance,
      num yDistance,
      num xOverscroll,
      num yOverscroll,
      bool preventFling,
      int speed,
      String gestureSourceType,
      int repeatCount,
      int repeatDelayMs,
      String interactionMarkerName}) {
    var params = {};
    if (x != null) params['x'] = x;

    if (y != null) params['y'] = y;

    if (xDistance != null) params['xDistance'] = xDistance;

    if (yDistance != null) params['yDistance'] = yDistance;

    if (xOverscroll != null) params['xOverscroll'] = xOverscroll;

    if (yOverscroll != null) params['yOverscroll'] = yOverscroll;

    if (preventFling != null) params['preventFling'] = preventFling;

    if (speed != null) params['speed'] = speed;

    if (gestureSourceType != null)
      params['gestureSourceType'] = gestureSourceType;

    if (repeatCount != null) params['repeatCount'] = repeatCount;

    if (repeatDelayMs != null) params['repeatDelayMs'] = repeatDelayMs;

    if (interactionMarkerName != null)
      params['interactionMarkerName'] = interactionMarkerName;

    return _devtools.rpc.sendRequest('Input.synthesizeScrollGesture', params);
  }

/** Synthesizes a tap gesture over a time period by issuing appropriate touch events. */
  dart_async.Future synthesizeTapGesture(
      {num x, num y, int duration, int tapCount, String gestureSourceType}) {
    var params = {};
    if (x != null) params['x'] = x;

    if (y != null) params['y'] = y;

    if (duration != null) params['duration'] = duration;

    if (tapCount != null) params['tapCount'] = tapCount;

    if (gestureSourceType != null)
      params['gestureSourceType'] = gestureSourceType;

    return _devtools.rpc.sendRequest('Input.synthesizeTapGesture', params);
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class DevToolsInspector {
  DevToolsInspector(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onDetached = new dart_async.StreamController();

  dart_async.StreamController _onTargetCrashed =
      new dart_async.StreamController();

  dart_async.StreamController _onTargetReloadedAfterCrash =
      new dart_async.StreamController();

/** Disables inspector domain notifications. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Inspector.disable', params);
  }

/** Enables inspector domain notifications. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Inspector.enable', params);
  }

/** Fired when remote debugging connection is about to be terminated. Contains detach reason. */
  dart_async.Stream get onDetached => _onDetached.stream;
/** Fired when debugging target has crashed */
  dart_async.Stream get onTargetCrashed => _onTargetCrashed.stream;
/** Fired when debugging target has reloaded after crash */
  dart_async.Stream get onTargetReloadedAfterCrash =>
      _onTargetReloadedAfterCrash.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Inspector.detached', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Inspector.targetCrashed', (json_rpc_2.Parameters params) {});

    rpc.registerMethod('Inspector.targetReloadedAfterCrash',
        (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onDetached.close();
    _onTargetCrashed.close();
    _onTargetReloadedAfterCrash.close();
  }
}

class LayerTreeCompositingReasonsResponse {
  LayerTreeCompositingReasonsResponse(Map map) {
    compositingReasons = map['compositingReasons'];
  }

  List compositingReasons;
}

class LayerTreeLoadSnapshotResponse {
  LayerTreeLoadSnapshotResponse(Map map) {
    snapshotId = map['snapshotId'];
  }

  String snapshotId;
}

class LayerTreeMakeSnapshotResponse {
  LayerTreeMakeSnapshotResponse(Map map) {
    snapshotId = map['snapshotId'];
  }

  String snapshotId;
}

class LayerTreeProfileSnapshotResponse {
  LayerTreeProfileSnapshotResponse(Map map) {
    timings = map['timings'];
  }

  List<List> timings;
}

class LayerTreeReplaySnapshotResponse {
  LayerTreeReplaySnapshotResponse(Map map) {
    dataURL = map['dataURL'];
  }

  String dataURL;
}

class LayerTreeSnapshotCommandLogResponse {
  LayerTreeSnapshotCommandLogResponse(Map map) {
    commandLog = map['commandLog'];
  }

  List commandLog;
}

class DevToolsLayerTree {
  DevToolsLayerTree(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onLayerPainted =
      new dart_async.StreamController();

  dart_async.StreamController _onLayerTreeDidChange =
      new dart_async.StreamController();

/** Provides the reasons why the given layer was composited. */
  dart_async.Future<LayerTreeCompositingReasonsResponse> compositingReasons(
      {String layerId}) {
    var params = {};
    if (layerId != null) params['layerId'] = layerId;

    return _devtools.rpc
        .sendRequest('LayerTree.compositingReasons', params)
        .then((response) => new LayerTreeCompositingReasonsResponse(response));
  }

/** Disables compositing tree inspection. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('LayerTree.disable', params);
  }

/** Enables compositing tree inspection. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('LayerTree.enable', params);
  }

/** Returns the snapshot identifier. */
  dart_async.Future<LayerTreeLoadSnapshotResponse> loadSnapshot(
      {List<PictureTile> tiles}) {
    var params = {};
    if (tiles != null) params['tiles'] = tiles;

    return _devtools.rpc
        .sendRequest('LayerTree.loadSnapshot', params)
        .then((response) => new LayerTreeLoadSnapshotResponse(response));
  }

/** Returns the layer snapshot identifier. */
  dart_async.Future<LayerTreeMakeSnapshotResponse> makeSnapshot(
      {String layerId}) {
    var params = {};
    if (layerId != null) params['layerId'] = layerId;

    return _devtools.rpc
        .sendRequest('LayerTree.makeSnapshot', params)
        .then((response) => new LayerTreeMakeSnapshotResponse(response));
  }

/**  */
  dart_async.Future<LayerTreeProfileSnapshotResponse> profileSnapshot(
      {String snapshotId, int minRepeatCount, num minDuration, Rect clipRect}) {
    var params = {};
    if (snapshotId != null) params['snapshotId'] = snapshotId;

    if (minRepeatCount != null) params['minRepeatCount'] = minRepeatCount;

    if (minDuration != null) params['minDuration'] = minDuration;

    if (clipRect != null) params['clipRect'] = clipRect;

    return _devtools.rpc
        .sendRequest('LayerTree.profileSnapshot', params)
        .then((response) => new LayerTreeProfileSnapshotResponse(response));
  }

/** Releases layer snapshot captured by the back-end. */
  dart_async.Future releaseSnapshot({String snapshotId}) {
    var params = {};
    if (snapshotId != null) params['snapshotId'] = snapshotId;

    return _devtools.rpc.sendRequest('LayerTree.releaseSnapshot', params);
  }

/** Replays the layer snapshot and returns the resulting bitmap. */
  dart_async.Future<LayerTreeReplaySnapshotResponse> replaySnapshot(
      {String snapshotId, int fromStep, int toStep, num scale}) {
    var params = {};
    if (snapshotId != null) params['snapshotId'] = snapshotId;

    if (fromStep != null) params['fromStep'] = fromStep;

    if (toStep != null) params['toStep'] = toStep;

    if (scale != null) params['scale'] = scale;

    return _devtools.rpc
        .sendRequest('LayerTree.replaySnapshot', params)
        .then((response) => new LayerTreeReplaySnapshotResponse(response));
  }

/** Replays the layer snapshot and returns canvas log. */
  dart_async.Future<LayerTreeSnapshotCommandLogResponse> snapshotCommandLog(
      {String snapshotId}) {
    var params = {};
    if (snapshotId != null) params['snapshotId'] = snapshotId;

    return _devtools.rpc
        .sendRequest('LayerTree.snapshotCommandLog', params)
        .then((response) => new LayerTreeSnapshotCommandLogResponse(response));
  }

/**  */
  dart_async.Stream get onLayerPainted => _onLayerPainted.stream;
/**  */
  dart_async.Stream get onLayerTreeDidChange => _onLayerTreeDidChange.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'LayerTree.layerPainted', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'LayerTree.layerTreeDidChange', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onLayerPainted.close();
    _onLayerTreeDidChange.close();
  }
}

class DevToolsLog {
  DevToolsLog(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onEntryAdded = new dart_async.StreamController();

/** Clears the log. */
  dart_async.Future clear() {
    var params = {};
    return _devtools.rpc.sendRequest('Log.clear', params);
  }

/** Disables log domain, prevents further log entries from being reported to the client. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Log.disable', params);
  }

/** Enables log domain, sends the entries collected so far to the client by means of the
`entryAdded` notification. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Log.enable', params);
  }

/** start violation reporting. */
  dart_async.Future startViolationsReport({List<ViolationSetting> config}) {
    var params = {};
    if (config != null) params['config'] = config;

    return _devtools.rpc.sendRequest('Log.startViolationsReport', params);
  }

/** Stop violation reporting. */
  dart_async.Future stopViolationsReport() {
    var params = {};
    return _devtools.rpc.sendRequest('Log.stopViolationsReport', params);
  }

/** Issued when new message was logged. */
  dart_async.Stream get onEntryAdded => _onEntryAdded.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Log.entryAdded', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onEntryAdded.close();
  }
}

class MemoryGetDOMCountersResponse {
  MemoryGetDOMCountersResponse(Map map) {
    documents = map['documents'];
    nodes = map['nodes'];
    jsEventListeners = map['jsEventListeners'];
  }

  int documents;

  int nodes;

  int jsEventListeners;
}

class MemoryGetAllTimeSamplingProfileResponse {
  MemoryGetAllTimeSamplingProfileResponse(Map map) {
    profile = map['profile'];
  }

  SamplingProfile profile;
}

class MemoryGetSamplingProfileResponse {
  MemoryGetSamplingProfileResponse(Map map) {
    profile = map['profile'];
  }

  SamplingProfile profile;
}

class DevToolsMemory {
  DevToolsMemory(this._devtools);

  final ChromeDevToolsBase _devtools;

/**  */
  dart_async.Future<MemoryGetDOMCountersResponse> getDOMCounters() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Memory.getDOMCounters', params)
        .then((response) => new MemoryGetDOMCountersResponse(response));
  }

/**  */
  dart_async.Future prepareForLeakDetection() {
    var params = {};
    return _devtools.rpc.sendRequest('Memory.prepareForLeakDetection', params);
  }

/** Enable/disable suppressing memory pressure notifications in all processes. */
  dart_async.Future setPressureNotificationsSuppressed({bool suppressed}) {
    var params = {};
    if (suppressed != null) params['suppressed'] = suppressed;

    return _devtools.rpc
        .sendRequest('Memory.setPressureNotificationsSuppressed', params);
  }

/** Simulate a memory pressure notification in all processes. */
  dart_async.Future simulatePressureNotification({String level}) {
    var params = {};
    if (level != null) params['level'] = level;

    return _devtools.rpc
        .sendRequest('Memory.simulatePressureNotification', params);
  }

/** Start collecting native memory profile. */
  dart_async.Future startSampling(
      {int samplingInterval, bool suppressRandomness}) {
    var params = {};
    if (samplingInterval != null) params['samplingInterval'] = samplingInterval;

    if (suppressRandomness != null)
      params['suppressRandomness'] = suppressRandomness;

    return _devtools.rpc.sendRequest('Memory.startSampling', params);
  }

/** Stop collecting native memory profile. */
  dart_async.Future stopSampling() {
    var params = {};
    return _devtools.rpc.sendRequest('Memory.stopSampling', params);
  }

/** Retrieve native memory allocations profile collected since process startup. */
  dart_async.Future<MemoryGetAllTimeSamplingProfileResponse>
      getAllTimeSamplingProfile() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Memory.getAllTimeSamplingProfile', params)
        .then((response) =>
            new MemoryGetAllTimeSamplingProfileResponse(response));
  }

/** Retrieve native memory allocations profile collected since last
`startSampling` call. */
  dart_async.Future<MemoryGetSamplingProfileResponse> getSamplingProfile() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Memory.getSamplingProfile', params)
        .then((response) => new MemoryGetSamplingProfileResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class NetworkCanClearBrowserCacheResponse {
  NetworkCanClearBrowserCacheResponse(Map map) {
    result = map['result'];
  }

  bool result;
}

class NetworkCanClearBrowserCookiesResponse {
  NetworkCanClearBrowserCookiesResponse(Map map) {
    result = map['result'];
  }

  bool result;
}

class NetworkCanEmulateNetworkConditionsResponse {
  NetworkCanEmulateNetworkConditionsResponse(Map map) {
    result = map['result'];
  }

  bool result;
}

class NetworkGetAllCookiesResponse {
  NetworkGetAllCookiesResponse(Map map) {
    cookies = map['cookies'];
  }

  List<Cookie> cookies;
}

class NetworkGetCertificateResponse {
  NetworkGetCertificateResponse(Map map) {
    tableNames = map['tableNames'];
  }

  List tableNames;
}

class NetworkGetCookiesResponse {
  NetworkGetCookiesResponse(Map map) {
    cookies = map['cookies'];
  }

  List<Cookie> cookies;
}

class NetworkGetResponseBodyResponse {
  NetworkGetResponseBodyResponse(Map map) {
    body = map['body'];
    base64Encoded = map['base64Encoded'];
  }

  String body;

  bool base64Encoded;
}

class NetworkGetRequestPostDataResponse {
  NetworkGetRequestPostDataResponse(Map map) {
    postData = map['postData'];
  }

  String postData;
}

class NetworkGetResponseBodyForInterceptionResponse {
  NetworkGetResponseBodyForInterceptionResponse(Map map) {
    body = map['body'];
    base64Encoded = map['base64Encoded'];
  }

  String body;

  bool base64Encoded;
}

class NetworkSearchInResponseBodyResponse {
  NetworkSearchInResponseBodyResponse(Map map) {
    result = map['result'];
  }

  List<SearchMatch> result;
}

class NetworkSetCookieResponse {
  NetworkSetCookieResponse(Map map) {
    success = map['success'];
  }

  bool success;
}

class DevToolsNetwork {
  DevToolsNetwork(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onDataReceived =
      new dart_async.StreamController();

  dart_async.StreamController _onEventSourceMessageReceived =
      new dart_async.StreamController();

  dart_async.StreamController _onLoadingFailed =
      new dart_async.StreamController();

  dart_async.StreamController _onLoadingFinished =
      new dart_async.StreamController();

  dart_async.StreamController _onRequestIntercepted =
      new dart_async.StreamController();

  dart_async.StreamController _onRequestServedFromCache =
      new dart_async.StreamController();

  dart_async.StreamController _onRequestWillBeSent =
      new dart_async.StreamController();

  dart_async.StreamController _onResourceChangedPriority =
      new dart_async.StreamController();

  dart_async.StreamController _onResponseReceived =
      new dart_async.StreamController();

  dart_async.StreamController _onWebSocketClosed =
      new dart_async.StreamController();

  dart_async.StreamController _onWebSocketCreated =
      new dart_async.StreamController();

  dart_async.StreamController _onWebSocketFrameError =
      new dart_async.StreamController();

  dart_async.StreamController _onWebSocketFrameReceived =
      new dart_async.StreamController();

  dart_async.StreamController _onWebSocketFrameSent =
      new dart_async.StreamController();

  dart_async.StreamController _onWebSocketHandshakeResponseReceived =
      new dart_async.StreamController();

  dart_async.StreamController _onWebSocketWillSendHandshakeRequest =
      new dart_async.StreamController();

/** Tells whether clearing browser cache is supported. */
  dart_async.Future<NetworkCanClearBrowserCacheResponse>
      canClearBrowserCache() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Network.canClearBrowserCache', params)
        .then((response) => new NetworkCanClearBrowserCacheResponse(response));
  }

/** Tells whether clearing browser cookies is supported. */
  dart_async.Future<NetworkCanClearBrowserCookiesResponse>
      canClearBrowserCookies() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Network.canClearBrowserCookies', params)
        .then(
            (response) => new NetworkCanClearBrowserCookiesResponse(response));
  }

/** Tells whether emulation of network conditions is supported. */
  dart_async.Future<NetworkCanEmulateNetworkConditionsResponse>
      canEmulateNetworkConditions() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Network.canEmulateNetworkConditions', params)
        .then((response) =>
            new NetworkCanEmulateNetworkConditionsResponse(response));
  }

/** Clears browser cache. */
  dart_async.Future clearBrowserCache() {
    var params = {};
    return _devtools.rpc.sendRequest('Network.clearBrowserCache', params);
  }

/** Clears browser cookies. */
  dart_async.Future clearBrowserCookies() {
    var params = {};
    return _devtools.rpc.sendRequest('Network.clearBrowserCookies', params);
  }

/** Response to Network.requestIntercepted which either modifies the request to continue with any
modifications, or blocks it, or completes it with the provided response bytes. If a network
fetch occurs as a result which encounters a redirect an additional Network.requestIntercepted
event will be sent with the same InterceptionId. */
  dart_async.Future continueInterceptedRequest(
      {String interceptionId,
      String errorReason,
      String rawResponse,
      String url,
      String method,
      String postData,
      Headers headers,
      AuthChallengeResponse authChallengeResponse}) {
    var params = {};
    if (interceptionId != null) params['interceptionId'] = interceptionId;

    if (errorReason != null) params['errorReason'] = errorReason;

    if (rawResponse != null) params['rawResponse'] = rawResponse;

    if (url != null) params['url'] = url;

    if (method != null) params['method'] = method;

    if (postData != null) params['postData'] = postData;

    if (headers != null) params['headers'] = headers;

    if (authChallengeResponse != null)
      params['authChallengeResponse'] = authChallengeResponse;

    return _devtools.rpc
        .sendRequest('Network.continueInterceptedRequest', params);
  }

/** Deletes browser cookies with matching name and url or domain/path pair. */
  dart_async.Future deleteCookies(
      {String name, String url, String domain, String path}) {
    var params = {};
    if (name != null) params['name'] = name;

    if (url != null) params['url'] = url;

    if (domain != null) params['domain'] = domain;

    if (path != null) params['path'] = path;

    return _devtools.rpc.sendRequest('Network.deleteCookies', params);
  }

/** Disables network tracking, prevents network events from being sent to the client. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Network.disable', params);
  }

/** Activates emulation of network conditions. */
  dart_async.Future emulateNetworkConditions(
      {bool offline,
      num latency,
      num downloadThroughput,
      num uploadThroughput,
      String connectionType}) {
    var params = {};
    if (offline != null) params['offline'] = offline;

    if (latency != null) params['latency'] = latency;

    if (downloadThroughput != null)
      params['downloadThroughput'] = downloadThroughput;

    if (uploadThroughput != null) params['uploadThroughput'] = uploadThroughput;

    if (connectionType != null) params['connectionType'] = connectionType;

    return _devtools.rpc
        .sendRequest('Network.emulateNetworkConditions', params);
  }

/** Enables network tracking, network events will now be delivered to the client. */
  dart_async.Future enable(
      {int maxTotalBufferSize,
      int maxResourceBufferSize,
      int maxPostDataSize}) {
    var params = {};
    if (maxTotalBufferSize != null)
      params['maxTotalBufferSize'] = maxTotalBufferSize;

    if (maxResourceBufferSize != null)
      params['maxResourceBufferSize'] = maxResourceBufferSize;

    if (maxPostDataSize != null) params['maxPostDataSize'] = maxPostDataSize;

    return _devtools.rpc.sendRequest('Network.enable', params);
  }

/** Returns all browser cookies. Depending on the backend support, will return detailed cookie
information in the `cookies` field. */
  dart_async.Future<NetworkGetAllCookiesResponse> getAllCookies() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Network.getAllCookies', params)
        .then((response) => new NetworkGetAllCookiesResponse(response));
  }

/** Returns the DER-encoded certificate. */
  dart_async.Future<NetworkGetCertificateResponse> getCertificate(
      {String origin}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    return _devtools.rpc
        .sendRequest('Network.getCertificate', params)
        .then((response) => new NetworkGetCertificateResponse(response));
  }

/** Returns all browser cookies for the current URL. Depending on the backend support, will return
detailed cookie information in the `cookies` field. */
  dart_async.Future<NetworkGetCookiesResponse> getCookies({List urls}) {
    var params = {};
    if (urls != null) params['urls'] = urls;

    return _devtools.rpc
        .sendRequest('Network.getCookies', params)
        .then((response) => new NetworkGetCookiesResponse(response));
  }

/** Returns content served for the given request. */
  dart_async.Future<NetworkGetResponseBodyResponse> getResponseBody(
      {String requestId}) {
    var params = {};
    if (requestId != null) params['requestId'] = requestId;

    return _devtools.rpc
        .sendRequest('Network.getResponseBody', params)
        .then((response) => new NetworkGetResponseBodyResponse(response));
  }

/** Returns post data sent with the request. Returns an error when no data was sent with the request. */
  dart_async.Future<NetworkGetRequestPostDataResponse> getRequestPostData(
      {String requestId}) {
    var params = {};
    if (requestId != null) params['requestId'] = requestId;

    return _devtools.rpc
        .sendRequest('Network.getRequestPostData', params)
        .then((response) => new NetworkGetRequestPostDataResponse(response));
  }

/** Returns content served for the given currently intercepted request. */
  dart_async.Future<NetworkGetResponseBodyForInterceptionResponse>
      getResponseBodyForInterception({String interceptionId}) {
    var params = {};
    if (interceptionId != null) params['interceptionId'] = interceptionId;

    return _devtools.rpc
        .sendRequest('Network.getResponseBodyForInterception', params)
        .then((response) =>
            new NetworkGetResponseBodyForInterceptionResponse(response));
  }

/** This method sends a new XMLHttpRequest which is identical to the original one. The following
parameters should be identical: method, url, async, request body, extra headers, withCredentials
attribute, user, password. */
  dart_async.Future replayXHR({String requestId}) {
    var params = {};
    if (requestId != null) params['requestId'] = requestId;

    return _devtools.rpc.sendRequest('Network.replayXHR', params);
  }

/** Searches for given string in response content. */
  dart_async.Future<NetworkSearchInResponseBodyResponse> searchInResponseBody(
      {String requestId, String query, bool caseSensitive, bool isRegex}) {
    var params = {};
    if (requestId != null) params['requestId'] = requestId;

    if (query != null) params['query'] = query;

    if (caseSensitive != null) params['caseSensitive'] = caseSensitive;

    if (isRegex != null) params['isRegex'] = isRegex;

    return _devtools.rpc
        .sendRequest('Network.searchInResponseBody', params)
        .then((response) => new NetworkSearchInResponseBodyResponse(response));
  }

/** Blocks URLs from loading. */
  dart_async.Future setBlockedURLs({List urls}) {
    var params = {};
    if (urls != null) params['urls'] = urls;

    return _devtools.rpc.sendRequest('Network.setBlockedURLs', params);
  }

/** Toggles ignoring of service worker for each request. */
  dart_async.Future setBypassServiceWorker({bool bypass}) {
    var params = {};
    if (bypass != null) params['bypass'] = bypass;

    return _devtools.rpc.sendRequest('Network.setBypassServiceWorker', params);
  }

/** Toggles ignoring cache for each request. If `true`, cache will not be used. */
  dart_async.Future setCacheDisabled({bool cacheDisabled}) {
    var params = {};
    if (cacheDisabled != null) params['cacheDisabled'] = cacheDisabled;

    return _devtools.rpc.sendRequest('Network.setCacheDisabled', params);
  }

/** Sets a cookie with the given cookie data; may overwrite equivalent cookies if they exist. */
  dart_async.Future<NetworkSetCookieResponse> setCookie(
      {String name,
      String value,
      String url,
      String domain,
      String path,
      bool secure,
      bool httpOnly,
      String sameSite,
      num expires}) {
    var params = {};
    if (name != null) params['name'] = name;

    if (value != null) params['value'] = value;

    if (url != null) params['url'] = url;

    if (domain != null) params['domain'] = domain;

    if (path != null) params['path'] = path;

    if (secure != null) params['secure'] = secure;

    if (httpOnly != null) params['httpOnly'] = httpOnly;

    if (sameSite != null) params['sameSite'] = sameSite;

    if (expires != null) params['expires'] = expires;

    return _devtools.rpc
        .sendRequest('Network.setCookie', params)
        .then((response) => new NetworkSetCookieResponse(response));
  }

/** Sets given cookies. */
  dart_async.Future setCookies({List<CookieParam> cookies}) {
    var params = {};
    if (cookies != null) params['cookies'] = cookies;

    return _devtools.rpc.sendRequest('Network.setCookies', params);
  }

/** For testing. */
  dart_async.Future setDataSizeLimitsForTest(
      {int maxTotalSize, int maxResourceSize}) {
    var params = {};
    if (maxTotalSize != null) params['maxTotalSize'] = maxTotalSize;

    if (maxResourceSize != null) params['maxResourceSize'] = maxResourceSize;

    return _devtools.rpc
        .sendRequest('Network.setDataSizeLimitsForTest', params);
  }

/** Specifies whether to always send extra HTTP headers with the requests from this page. */
  dart_async.Future setExtraHTTPHeaders({Headers headers}) {
    var params = {};
    if (headers != null) params['headers'] = headers;

    return _devtools.rpc.sendRequest('Network.setExtraHTTPHeaders', params);
  }

/** Sets the requests to intercept that match a the provided patterns and optionally resource types. */
  dart_async.Future setRequestInterception({List<RequestPattern> patterns}) {
    var params = {};
    if (patterns != null) params['patterns'] = patterns;

    return _devtools.rpc.sendRequest('Network.setRequestInterception', params);
  }

/** Allows overriding user agent with the given string. */
  dart_async.Future setUserAgentOverride({String userAgent}) {
    var params = {};
    if (userAgent != null) params['userAgent'] = userAgent;

    return _devtools.rpc.sendRequest('Network.setUserAgentOverride', params);
  }

/** Fired when data chunk was received over the network. */
  dart_async.Stream get onDataReceived => _onDataReceived.stream;
/** Fired when EventSource message is received. */
  dart_async.Stream get onEventSourceMessageReceived =>
      _onEventSourceMessageReceived.stream;
/** Fired when HTTP request has failed to load. */
  dart_async.Stream get onLoadingFailed => _onLoadingFailed.stream;
/** Fired when HTTP request has finished loading. */
  dart_async.Stream get onLoadingFinished => _onLoadingFinished.stream;
/** Details of an intercepted HTTP request, which must be either allowed, blocked, modified or
mocked. */
  dart_async.Stream get onRequestIntercepted => _onRequestIntercepted.stream;
/** Fired if request ended up loading from cache. */
  dart_async.Stream get onRequestServedFromCache =>
      _onRequestServedFromCache.stream;
/** Fired when page is about to send HTTP request. */
  dart_async.Stream get onRequestWillBeSent => _onRequestWillBeSent.stream;
/** Fired when resource loading priority is changed */
  dart_async.Stream get onResourceChangedPriority =>
      _onResourceChangedPriority.stream;
/** Fired when HTTP response is available. */
  dart_async.Stream get onResponseReceived => _onResponseReceived.stream;
/** Fired when WebSocket is closed. */
  dart_async.Stream get onWebSocketClosed => _onWebSocketClosed.stream;
/** Fired upon WebSocket creation. */
  dart_async.Stream get onWebSocketCreated => _onWebSocketCreated.stream;
/** Fired when WebSocket frame error occurs. */
  dart_async.Stream get onWebSocketFrameError => _onWebSocketFrameError.stream;
/** Fired when WebSocket frame is received. */
  dart_async.Stream get onWebSocketFrameReceived =>
      _onWebSocketFrameReceived.stream;
/** Fired when WebSocket frame is sent. */
  dart_async.Stream get onWebSocketFrameSent => _onWebSocketFrameSent.stream;
/** Fired when WebSocket handshake response becomes available. */
  dart_async.Stream get onWebSocketHandshakeResponseReceived =>
      _onWebSocketHandshakeResponseReceived.stream;
/** Fired when WebSocket is about to initiate handshake. */
  dart_async.Stream get onWebSocketWillSendHandshakeRequest =>
      _onWebSocketWillSendHandshakeRequest.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'Network.dataReceived', (json_rpc_2.Parameters params) {});

    rpc.registerMethod('Network.eventSourceMessageReceived',
        (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Network.loadingFailed', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Network.loadingFinished', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Network.requestIntercepted', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Network.requestServedFromCache', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Network.requestWillBeSent', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Network.resourceChangedPriority', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Network.responseReceived', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Network.webSocketClosed', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Network.webSocketCreated', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Network.webSocketFrameError', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Network.webSocketFrameReceived', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Network.webSocketFrameSent', (json_rpc_2.Parameters params) {});

    rpc.registerMethod('Network.webSocketHandshakeResponseReceived',
        (json_rpc_2.Parameters params) {});

    rpc.registerMethod('Network.webSocketWillSendHandshakeRequest',
        (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onDataReceived.close();
    _onEventSourceMessageReceived.close();
    _onLoadingFailed.close();
    _onLoadingFinished.close();
    _onRequestIntercepted.close();
    _onRequestServedFromCache.close();
    _onRequestWillBeSent.close();
    _onResourceChangedPriority.close();
    _onResponseReceived.close();
    _onWebSocketClosed.close();
    _onWebSocketCreated.close();
    _onWebSocketFrameError.close();
    _onWebSocketFrameReceived.close();
    _onWebSocketFrameSent.close();
    _onWebSocketHandshakeResponseReceived.close();
    _onWebSocketWillSendHandshakeRequest.close();
  }
}

class OverlayGetHighlightObjectForTestResponse {
  OverlayGetHighlightObjectForTestResponse(Map map) {
    highlight = map['highlight'];
  }

  Map highlight;
}

class DevToolsOverlay {
  DevToolsOverlay(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onInspectNodeRequested =
      new dart_async.StreamController();

  dart_async.StreamController _onNodeHighlightRequested =
      new dart_async.StreamController();

  dart_async.StreamController _onScreenshotRequested =
      new dart_async.StreamController();

/** Disables domain notifications. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Overlay.disable', params);
  }

/** Enables domain notifications. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Overlay.enable', params);
  }

/** For testing. */
  dart_async.Future<OverlayGetHighlightObjectForTestResponse>
      getHighlightObjectForTest({int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('Overlay.getHighlightObjectForTest', params)
        .then((response) =>
            new OverlayGetHighlightObjectForTestResponse(response));
  }

/** Hides any highlight. */
  dart_async.Future hideHighlight() {
    var params = {};
    return _devtools.rpc.sendRequest('Overlay.hideHighlight', params);
  }

/** Highlights owner element of the frame with given id. */
  dart_async.Future highlightFrame(
      {String frameId, RGBA contentColor, RGBA contentOutlineColor}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    if (contentColor != null) params['contentColor'] = contentColor;

    if (contentOutlineColor != null)
      params['contentOutlineColor'] = contentOutlineColor;

    return _devtools.rpc.sendRequest('Overlay.highlightFrame', params);
  }

/** Highlights DOM node with given id or with the given JavaScript object wrapper. Either nodeId or
objectId must be specified. */
  dart_async.Future highlightNode(
      {HighlightConfig highlightConfig,
      int nodeId,
      int backendNodeId,
      String objectId}) {
    var params = {};
    if (highlightConfig != null) params['highlightConfig'] = highlightConfig;

    if (nodeId != null) params['nodeId'] = nodeId;

    if (backendNodeId != null) params['backendNodeId'] = backendNodeId;

    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc.sendRequest('Overlay.highlightNode', params);
  }

/** Highlights given quad. Coordinates are absolute with respect to the main frame viewport. */
  dart_async.Future highlightQuad({List quad, RGBA color, RGBA outlineColor}) {
    var params = {};
    if (quad != null) params['quad'] = quad;

    if (color != null) params['color'] = color;

    if (outlineColor != null) params['outlineColor'] = outlineColor;

    return _devtools.rpc.sendRequest('Overlay.highlightQuad', params);
  }

/** Highlights given rectangle. Coordinates are absolute with respect to the main frame viewport. */
  dart_async.Future highlightRect(
      {int x, int y, int width, int height, RGBA color, RGBA outlineColor}) {
    var params = {};
    if (x != null) params['x'] = x;

    if (y != null) params['y'] = y;

    if (width != null) params['width'] = width;

    if (height != null) params['height'] = height;

    if (color != null) params['color'] = color;

    if (outlineColor != null) params['outlineColor'] = outlineColor;

    return _devtools.rpc.sendRequest('Overlay.highlightRect', params);
  }

/** Enters the 'inspect' mode. In this mode, elements that user is hovering over are highlighted.
Backend then generates 'inspectNodeRequested' event upon element selection. */
  dart_async.Future setInspectMode(
      {String mode, HighlightConfig highlightConfig}) {
    var params = {};
    if (mode != null) params['mode'] = mode;

    if (highlightConfig != null) params['highlightConfig'] = highlightConfig;

    return _devtools.rpc.sendRequest('Overlay.setInspectMode', params);
  }

/**  */
  dart_async.Future setPausedInDebuggerMessage({String message}) {
    var params = {};
    if (message != null) params['message'] = message;

    return _devtools.rpc
        .sendRequest('Overlay.setPausedInDebuggerMessage', params);
  }

/** Requests that backend shows debug borders on layers */
  dart_async.Future setShowDebugBorders({bool show}) {
    var params = {};
    if (show != null) params['show'] = show;

    return _devtools.rpc.sendRequest('Overlay.setShowDebugBorders', params);
  }

/** Requests that backend shows the FPS counter */
  dart_async.Future setShowFPSCounter({bool show}) {
    var params = {};
    if (show != null) params['show'] = show;

    return _devtools.rpc.sendRequest('Overlay.setShowFPSCounter', params);
  }

/** Requests that backend shows paint rectangles */
  dart_async.Future setShowPaintRects({bool result}) {
    var params = {};
    if (result != null) params['result'] = result;

    return _devtools.rpc.sendRequest('Overlay.setShowPaintRects', params);
  }

/** Requests that backend shows scroll bottleneck rects */
  dart_async.Future setShowScrollBottleneckRects({bool show}) {
    var params = {};
    if (show != null) params['show'] = show;

    return _devtools.rpc
        .sendRequest('Overlay.setShowScrollBottleneckRects', params);
  }

/** Paints viewport size upon main frame resize. */
  dart_async.Future setShowViewportSizeOnResize({bool show}) {
    var params = {};
    if (show != null) params['show'] = show;

    return _devtools.rpc
        .sendRequest('Overlay.setShowViewportSizeOnResize', params);
  }

/**  */
  dart_async.Future setSuspended({bool suspended}) {
    var params = {};
    if (suspended != null) params['suspended'] = suspended;

    return _devtools.rpc.sendRequest('Overlay.setSuspended', params);
  }

/** Fired when the node should be inspected. This happens after call to `setInspectMode` or when
user manually inspects an element. */
  dart_async.Stream get onInspectNodeRequested =>
      _onInspectNodeRequested.stream;
/** Fired when the node should be highlighted. This happens after call to `setInspectMode`. */
  dart_async.Stream get onNodeHighlightRequested =>
      _onNodeHighlightRequested.stream;
/** Fired when user asks to capture screenshot of some area on the page. */
  dart_async.Stream get onScreenshotRequested => _onScreenshotRequested.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'Overlay.inspectNodeRequested', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Overlay.nodeHighlightRequested', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Overlay.screenshotRequested', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onInspectNodeRequested.close();
    _onNodeHighlightRequested.close();
    _onScreenshotRequested.close();
  }
}

class PageAddScriptToEvaluateOnLoadResponse {
  PageAddScriptToEvaluateOnLoadResponse(Map map) {
    identifier = map['identifier'];
  }

  String identifier;
}

class PageAddScriptToEvaluateOnNewDocumentResponse {
  PageAddScriptToEvaluateOnNewDocumentResponse(Map map) {
    identifier = map['identifier'];
  }

  String identifier;
}

class PageCaptureScreenshotResponse {
  PageCaptureScreenshotResponse(Map map) {
    data = map['data'];
  }

  String data;
}

class PageCreateIsolatedWorldResponse {
  PageCreateIsolatedWorldResponse(Map map) {
    executionContextId = map['executionContextId'];
  }

  int executionContextId;
}

class PageGetAppManifestResponse {
  PageGetAppManifestResponse(Map map) {
    url = map['url'];
    errors = map['errors'];
    data = map['data'];
  }

  String url;

  List<AppManifestError> errors;

  String data;
}

class PageGetCookiesResponse {
  PageGetCookiesResponse(Map map) {
    cookies = map['cookies'];
  }

  List<Cookie> cookies;
}

class PageGetFrameTreeResponse {
  PageGetFrameTreeResponse(Map map) {
    frameTree = map['frameTree'];
  }

  FrameTree frameTree;
}

class PageGetLayoutMetricsResponse {
  PageGetLayoutMetricsResponse(Map map) {
    layoutViewport = map['layoutViewport'];
    visualViewport = map['visualViewport'];
    contentSize = map['contentSize'];
  }

  LayoutViewport layoutViewport;

  VisualViewport visualViewport;

  Rect contentSize;
}

class PageGetNavigationHistoryResponse {
  PageGetNavigationHistoryResponse(Map map) {
    currentIndex = map['currentIndex'];
    entries = map['entries'];
  }

  int currentIndex;

  List<NavigationEntry> entries;
}

class PageGetResourceContentResponse {
  PageGetResourceContentResponse(Map map) {
    content = map['content'];
    base64Encoded = map['base64Encoded'];
  }

  String content;

  bool base64Encoded;
}

class PageGetResourceTreeResponse {
  PageGetResourceTreeResponse(Map map) {
    frameTree = map['frameTree'];
  }

  FrameResourceTree frameTree;
}

class PageNavigateResponse {
  PageNavigateResponse(Map map) {
    frameId = map['frameId'];
    loaderId = map['loaderId'];
    errorText = map['errorText'];
  }

  String frameId;

  String loaderId;

  String errorText;
}

class PagePrintToPDFResponse {
  PagePrintToPDFResponse(Map map) {
    data = map['data'];
  }

  String data;
}

class PageSearchInResourceResponse {
  PageSearchInResourceResponse(Map map) {
    result = map['result'];
  }

  List<SearchMatch> result;
}

class DevToolsPage {
  DevToolsPage(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onDomContentEventFired =
      new dart_async.StreamController();

  dart_async.StreamController _onFrameAttached =
      new dart_async.StreamController();

  dart_async.StreamController _onFrameClearedScheduledNavigation =
      new dart_async.StreamController();

  dart_async.StreamController _onFrameDetached =
      new dart_async.StreamController();

  dart_async.StreamController _onFrameNavigated =
      new dart_async.StreamController();

  dart_async.StreamController _onFrameResized =
      new dart_async.StreamController();

  dart_async.StreamController _onFrameScheduledNavigation =
      new dart_async.StreamController();

  dart_async.StreamController _onFrameStartedLoading =
      new dart_async.StreamController();

  dart_async.StreamController _onFrameStoppedLoading =
      new dart_async.StreamController();

  dart_async.StreamController _onInterstitialHidden =
      new dart_async.StreamController();

  dart_async.StreamController _onInterstitialShown =
      new dart_async.StreamController();

  dart_async.StreamController _onJavascriptDialogClosed =
      new dart_async.StreamController();

  dart_async.StreamController _onJavascriptDialogOpening =
      new dart_async.StreamController();

  dart_async.StreamController _onLifecycleEvent =
      new dart_async.StreamController();

  dart_async.StreamController _onLoadEventFired =
      new dart_async.StreamController();

  dart_async.StreamController _onScreencastFrame =
      new dart_async.StreamController();

  dart_async.StreamController _onScreencastVisibilityChanged =
      new dart_async.StreamController();

  dart_async.StreamController _onWindowOpen = new dart_async.StreamController();

/** Deprecated, please use addScriptToEvaluateOnNewDocument instead. */
  dart_async.Future<PageAddScriptToEvaluateOnLoadResponse>
      addScriptToEvaluateOnLoad({String scriptSource}) {
    var params = {};
    if (scriptSource != null) params['scriptSource'] = scriptSource;

    return _devtools.rpc
        .sendRequest('Page.addScriptToEvaluateOnLoad', params)
        .then(
            (response) => new PageAddScriptToEvaluateOnLoadResponse(response));
  }

/** Evaluates given script in every frame upon creation (before loading frame's scripts). */
  dart_async.Future<PageAddScriptToEvaluateOnNewDocumentResponse>
      addScriptToEvaluateOnNewDocument({String source}) {
    var params = {};
    if (source != null) params['source'] = source;

    return _devtools.rpc
        .sendRequest('Page.addScriptToEvaluateOnNewDocument', params)
        .then((response) =>
            new PageAddScriptToEvaluateOnNewDocumentResponse(response));
  }

/** Brings page to front (activates tab). */
  dart_async.Future bringToFront() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.bringToFront', params);
  }

/** Capture page screenshot. */
  dart_async.Future<PageCaptureScreenshotResponse> captureScreenshot(
      {String format, int quality, Viewport clip, bool fromSurface}) {
    var params = {};
    if (format != null) params['format'] = format;

    if (quality != null) params['quality'] = quality;

    if (clip != null) params['clip'] = clip;

    if (fromSurface != null) params['fromSurface'] = fromSurface;

    return _devtools.rpc
        .sendRequest('Page.captureScreenshot', params)
        .then((response) => new PageCaptureScreenshotResponse(response));
  }

/** Clears the overriden device metrics. */
  dart_async.Future clearDeviceMetricsOverride() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.clearDeviceMetricsOverride', params);
  }

/** Clears the overridden Device Orientation. */
  dart_async.Future clearDeviceOrientationOverride() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Page.clearDeviceOrientationOverride', params);
  }

/** Clears the overriden Geolocation Position and Error. */
  dart_async.Future clearGeolocationOverride() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.clearGeolocationOverride', params);
  }

/** Creates an isolated world for the given frame. */
  dart_async.Future<PageCreateIsolatedWorldResponse> createIsolatedWorld(
      {String frameId, String worldName, bool grantUniveralAccess}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    if (worldName != null) params['worldName'] = worldName;

    if (grantUniveralAccess != null)
      params['grantUniveralAccess'] = grantUniveralAccess;

    return _devtools.rpc
        .sendRequest('Page.createIsolatedWorld', params)
        .then((response) => new PageCreateIsolatedWorldResponse(response));
  }

/** Deletes browser cookie with given name, domain and path. */
  dart_async.Future deleteCookie({String cookieName, String url}) {
    var params = {};
    if (cookieName != null) params['cookieName'] = cookieName;

    if (url != null) params['url'] = url;

    return _devtools.rpc.sendRequest('Page.deleteCookie', params);
  }

/** Disables page domain notifications. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.disable', params);
  }

/** Enables page domain notifications. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.enable', params);
  }

/**  */
  dart_async.Future<PageGetAppManifestResponse> getAppManifest() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Page.getAppManifest', params)
        .then((response) => new PageGetAppManifestResponse(response));
  }

/** Returns all browser cookies. Depending on the backend support, will return detailed cookie
information in the `cookies` field. */
  dart_async.Future<PageGetCookiesResponse> getCookies() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Page.getCookies', params)
        .then((response) => new PageGetCookiesResponse(response));
  }

/** Returns present frame tree structure. */
  dart_async.Future<PageGetFrameTreeResponse> getFrameTree() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Page.getFrameTree', params)
        .then((response) => new PageGetFrameTreeResponse(response));
  }

/** Returns metrics relating to the layouting of the page, such as viewport bounds/scale. */
  dart_async.Future<PageGetLayoutMetricsResponse> getLayoutMetrics() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Page.getLayoutMetrics', params)
        .then((response) => new PageGetLayoutMetricsResponse(response));
  }

/** Returns navigation history for the current page. */
  dart_async.Future<PageGetNavigationHistoryResponse> getNavigationHistory() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Page.getNavigationHistory', params)
        .then((response) => new PageGetNavigationHistoryResponse(response));
  }

/** Returns content of the given resource. */
  dart_async.Future<PageGetResourceContentResponse> getResourceContent(
      {String frameId, String url}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    if (url != null) params['url'] = url;

    return _devtools.rpc
        .sendRequest('Page.getResourceContent', params)
        .then((response) => new PageGetResourceContentResponse(response));
  }

/** Returns present frame / resource tree structure. */
  dart_async.Future<PageGetResourceTreeResponse> getResourceTree() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Page.getResourceTree', params)
        .then((response) => new PageGetResourceTreeResponse(response));
  }

/** Accepts or dismisses a JavaScript initiated dialog (alert, confirm, prompt, or onbeforeunload). */
  dart_async.Future handleJavaScriptDialog({bool accept, String promptText}) {
    var params = {};
    if (accept != null) params['accept'] = accept;

    if (promptText != null) params['promptText'] = promptText;

    return _devtools.rpc.sendRequest('Page.handleJavaScriptDialog', params);
  }

/** Navigates current page to the given URL. */
  dart_async.Future<PageNavigateResponse> navigate(
      {String url, String referrer, String transitionType, String frameId}) {
    var params = {};
    if (url != null) params['url'] = url;

    if (referrer != null) params['referrer'] = referrer;

    if (transitionType != null) params['transitionType'] = transitionType;

    if (frameId != null) params['frameId'] = frameId;

    return _devtools.rpc
        .sendRequest('Page.navigate', params)
        .then((response) => new PageNavigateResponse(response));
  }

/** Navigates current page to the given history entry. */
  dart_async.Future navigateToHistoryEntry({int entryId}) {
    var params = {};
    if (entryId != null) params['entryId'] = entryId;

    return _devtools.rpc.sendRequest('Page.navigateToHistoryEntry', params);
  }

/** Print page as PDF. */
  dart_async.Future<PagePrintToPDFResponse> printToPDF(
      {bool landscape,
      bool displayHeaderFooter,
      bool printBackground,
      num scale,
      num paperWidth,
      num paperHeight,
      num marginTop,
      num marginBottom,
      num marginLeft,
      num marginRight,
      String pageRanges,
      bool ignoreInvalidPageRanges,
      String headerTemplate,
      String footerTemplate,
      bool preferCSSPageSize}) {
    var params = {};
    if (landscape != null) params['landscape'] = landscape;

    if (displayHeaderFooter != null)
      params['displayHeaderFooter'] = displayHeaderFooter;

    if (printBackground != null) params['printBackground'] = printBackground;

    if (scale != null) params['scale'] = scale;

    if (paperWidth != null) params['paperWidth'] = paperWidth;

    if (paperHeight != null) params['paperHeight'] = paperHeight;

    if (marginTop != null) params['marginTop'] = marginTop;

    if (marginBottom != null) params['marginBottom'] = marginBottom;

    if (marginLeft != null) params['marginLeft'] = marginLeft;

    if (marginRight != null) params['marginRight'] = marginRight;

    if (pageRanges != null) params['pageRanges'] = pageRanges;

    if (ignoreInvalidPageRanges != null)
      params['ignoreInvalidPageRanges'] = ignoreInvalidPageRanges;

    if (headerTemplate != null) params['headerTemplate'] = headerTemplate;

    if (footerTemplate != null) params['footerTemplate'] = footerTemplate;

    if (preferCSSPageSize != null)
      params['preferCSSPageSize'] = preferCSSPageSize;

    return _devtools.rpc
        .sendRequest('Page.printToPDF', params)
        .then((response) => new PagePrintToPDFResponse(response));
  }

/** Reloads given page optionally ignoring the cache. */
  dart_async.Future reload({bool ignoreCache, String scriptToEvaluateOnLoad}) {
    var params = {};
    if (ignoreCache != null) params['ignoreCache'] = ignoreCache;

    if (scriptToEvaluateOnLoad != null)
      params['scriptToEvaluateOnLoad'] = scriptToEvaluateOnLoad;

    return _devtools.rpc.sendRequest('Page.reload', params);
  }

/** Deprecated, please use removeScriptToEvaluateOnNewDocument instead. */
  dart_async.Future removeScriptToEvaluateOnLoad({String identifier}) {
    var params = {};
    if (identifier != null) params['identifier'] = identifier;

    return _devtools.rpc
        .sendRequest('Page.removeScriptToEvaluateOnLoad', params);
  }

/** Removes given script from the list. */
  dart_async.Future removeScriptToEvaluateOnNewDocument({String identifier}) {
    var params = {};
    if (identifier != null) params['identifier'] = identifier;

    return _devtools.rpc
        .sendRequest('Page.removeScriptToEvaluateOnNewDocument', params);
  }

/**  */
  dart_async.Future requestAppBanner() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.requestAppBanner', params);
  }

/** Acknowledges that a screencast frame has been received by the frontend. */
  dart_async.Future screencastFrameAck({int sessionId}) {
    var params = {};
    if (sessionId != null) params['sessionId'] = sessionId;

    return _devtools.rpc.sendRequest('Page.screencastFrameAck', params);
  }

/** Searches for given string in resource content. */
  dart_async.Future<PageSearchInResourceResponse> searchInResource(
      {String frameId,
      String url,
      String query,
      bool caseSensitive,
      bool isRegex}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    if (url != null) params['url'] = url;

    if (query != null) params['query'] = query;

    if (caseSensitive != null) params['caseSensitive'] = caseSensitive;

    if (isRegex != null) params['isRegex'] = isRegex;

    return _devtools.rpc
        .sendRequest('Page.searchInResource', params)
        .then((response) => new PageSearchInResourceResponse(response));
  }

/** Enable Chrome's experimental ad filter on all sites. */
  dart_async.Future setAdBlockingEnabled({bool enabled}) {
    var params = {};
    if (enabled != null) params['enabled'] = enabled;

    return _devtools.rpc.sendRequest('Page.setAdBlockingEnabled', params);
  }

/** Overrides the values of device screen dimensions (window.screen.width, window.screen.height,
window.innerWidth, window.innerHeight, and "device-width"/"device-height"-related CSS media
query results). */
  dart_async.Future setDeviceMetricsOverride(
      {int width,
      int height,
      num deviceScaleFactor,
      bool mobile,
      num scale,
      int screenWidth,
      int screenHeight,
      int positionX,
      int positionY,
      bool dontSetVisibleSize,
      ScreenOrientation screenOrientation,
      Viewport viewport}) {
    var params = {};
    if (width != null) params['width'] = width;

    if (height != null) params['height'] = height;

    if (deviceScaleFactor != null)
      params['deviceScaleFactor'] = deviceScaleFactor;

    if (mobile != null) params['mobile'] = mobile;

    if (scale != null) params['scale'] = scale;

    if (screenWidth != null) params['screenWidth'] = screenWidth;

    if (screenHeight != null) params['screenHeight'] = screenHeight;

    if (positionX != null) params['positionX'] = positionX;

    if (positionY != null) params['positionY'] = positionY;

    if (dontSetVisibleSize != null)
      params['dontSetVisibleSize'] = dontSetVisibleSize;

    if (screenOrientation != null)
      params['screenOrientation'] = screenOrientation;

    if (viewport != null) params['viewport'] = viewport;

    return _devtools.rpc.sendRequest('Page.setDeviceMetricsOverride', params);
  }

/** Overrides the Device Orientation. */
  dart_async.Future setDeviceOrientationOverride(
      {num alpha, num beta, num gamma}) {
    var params = {};
    if (alpha != null) params['alpha'] = alpha;

    if (beta != null) params['beta'] = beta;

    if (gamma != null) params['gamma'] = gamma;

    return _devtools.rpc
        .sendRequest('Page.setDeviceOrientationOverride', params);
  }

/** Sets given markup as the document's HTML. */
  dart_async.Future setDocumentContent({String frameId, String html}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    if (html != null) params['html'] = html;

    return _devtools.rpc.sendRequest('Page.setDocumentContent', params);
  }

/** Set the behavior when downloading a file. */
  dart_async.Future setDownloadBehavior(
      {String behavior, String downloadPath}) {
    var params = {};
    if (behavior != null) params['behavior'] = behavior;

    if (downloadPath != null) params['downloadPath'] = downloadPath;

    return _devtools.rpc.sendRequest('Page.setDownloadBehavior', params);
  }

/** Overrides the Geolocation Position or Error. Omitting any of the parameters emulates position
unavailable. */
  dart_async.Future setGeolocationOverride(
      {num latitude, num longitude, num accuracy}) {
    var params = {};
    if (latitude != null) params['latitude'] = latitude;

    if (longitude != null) params['longitude'] = longitude;

    if (accuracy != null) params['accuracy'] = accuracy;

    return _devtools.rpc.sendRequest('Page.setGeolocationOverride', params);
  }

/** Controls whether page will emit lifecycle events. */
  dart_async.Future setLifecycleEventsEnabled({bool enabled}) {
    var params = {};
    if (enabled != null) params['enabled'] = enabled;

    return _devtools.rpc.sendRequest('Page.setLifecycleEventsEnabled', params);
  }

/** Toggles mouse event-based touch event emulation. */
  dart_async.Future setTouchEmulationEnabled(
      {bool enabled, String configuration}) {
    var params = {};
    if (enabled != null) params['enabled'] = enabled;

    if (configuration != null) params['configuration'] = configuration;

    return _devtools.rpc.sendRequest('Page.setTouchEmulationEnabled', params);
  }

/** Starts sending each frame using the `screencastFrame` event. */
  dart_async.Future startScreencast(
      {String format,
      int quality,
      int maxWidth,
      int maxHeight,
      int everyNthFrame}) {
    var params = {};
    if (format != null) params['format'] = format;

    if (quality != null) params['quality'] = quality;

    if (maxWidth != null) params['maxWidth'] = maxWidth;

    if (maxHeight != null) params['maxHeight'] = maxHeight;

    if (everyNthFrame != null) params['everyNthFrame'] = everyNthFrame;

    return _devtools.rpc.sendRequest('Page.startScreencast', params);
  }

/** Force the page stop all navigations and pending resource fetches. */
  dart_async.Future stopLoading() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.stopLoading', params);
  }

/** Crashes renderer on the IO thread, generates minidumps. */
  dart_async.Future crash() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.crash', params);
  }

/** Stops sending each frame in the `screencastFrame`. */
  dart_async.Future stopScreencast() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.stopScreencast', params);
  }

/**  */
  dart_async.Stream get onDomContentEventFired =>
      _onDomContentEventFired.stream;
/** Fired when frame has been attached to its parent. */
  dart_async.Stream get onFrameAttached => _onFrameAttached.stream;
/** Fired when frame no longer has a scheduled navigation. */
  dart_async.Stream get onFrameClearedScheduledNavigation =>
      _onFrameClearedScheduledNavigation.stream;
/** Fired when frame has been detached from its parent. */
  dart_async.Stream get onFrameDetached => _onFrameDetached.stream;
/** Fired once navigation of the frame has completed. Frame is now associated with the new loader. */
  dart_async.Stream get onFrameNavigated => _onFrameNavigated.stream;
/**  */
  dart_async.Stream get onFrameResized => _onFrameResized.stream;
/** Fired when frame schedules a potential navigation. */
  dart_async.Stream get onFrameScheduledNavigation =>
      _onFrameScheduledNavigation.stream;
/** Fired when frame has started loading. */
  dart_async.Stream get onFrameStartedLoading => _onFrameStartedLoading.stream;
/** Fired when frame has stopped loading. */
  dart_async.Stream get onFrameStoppedLoading => _onFrameStoppedLoading.stream;
/** Fired when interstitial page was hidden */
  dart_async.Stream get onInterstitialHidden => _onInterstitialHidden.stream;
/** Fired when interstitial page was shown */
  dart_async.Stream get onInterstitialShown => _onInterstitialShown.stream;
/** Fired when a JavaScript initiated dialog (alert, confirm, prompt, or onbeforeunload) has been
closed. */
  dart_async.Stream get onJavascriptDialogClosed =>
      _onJavascriptDialogClosed.stream;
/** Fired when a JavaScript initiated dialog (alert, confirm, prompt, or onbeforeunload) is about to
open. */
  dart_async.Stream get onJavascriptDialogOpening =>
      _onJavascriptDialogOpening.stream;
/** Fired for top level page lifecycle events such as navigation, load, paint, etc. */
  dart_async.Stream get onLifecycleEvent => _onLifecycleEvent.stream;
/**  */
  dart_async.Stream get onLoadEventFired => _onLoadEventFired.stream;
/** Compressed image data requested by the `startScreencast`. */
  dart_async.Stream get onScreencastFrame => _onScreencastFrame.stream;
/** Fired when the page with currently enabled screencast was shown or hidden `. */
  dart_async.Stream get onScreencastVisibilityChanged =>
      _onScreencastVisibilityChanged.stream;
/** Fired when a new window is going to be opened, via window.open(), link click, form submission,
etc. */
  dart_async.Stream get onWindowOpen => _onWindowOpen.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'Page.domContentEventFired', (json_rpc_2.Parameters params) {});

    rpc.registerMethod('Page.frameAttached', (json_rpc_2.Parameters params) {});

    rpc.registerMethod('Page.frameClearedScheduledNavigation',
        (json_rpc_2.Parameters params) {});

    rpc.registerMethod('Page.frameDetached', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Page.frameNavigated', (json_rpc_2.Parameters params) {});

    rpc.registerMethod('Page.frameResized', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Page.frameScheduledNavigation', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Page.frameStartedLoading', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Page.frameStoppedLoading', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Page.interstitialHidden', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Page.interstitialShown', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Page.javascriptDialogClosed', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Page.javascriptDialogOpening', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Page.lifecycleEvent', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Page.loadEventFired', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Page.screencastFrame', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Page.screencastVisibilityChanged', (json_rpc_2.Parameters params) {});

    rpc.registerMethod('Page.windowOpen', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onDomContentEventFired.close();
    _onFrameAttached.close();
    _onFrameClearedScheduledNavigation.close();
    _onFrameDetached.close();
    _onFrameNavigated.close();
    _onFrameResized.close();
    _onFrameScheduledNavigation.close();
    _onFrameStartedLoading.close();
    _onFrameStoppedLoading.close();
    _onInterstitialHidden.close();
    _onInterstitialShown.close();
    _onJavascriptDialogClosed.close();
    _onJavascriptDialogOpening.close();
    _onLifecycleEvent.close();
    _onLoadEventFired.close();
    _onScreencastFrame.close();
    _onScreencastVisibilityChanged.close();
    _onWindowOpen.close();
  }
}

class PerformanceGetMetricsResponse {
  PerformanceGetMetricsResponse(Map map) {
    metrics = map['metrics'];
  }

  List<Metric> metrics;
}

class DevToolsPerformance {
  DevToolsPerformance(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onMetrics = new dart_async.StreamController();

/** Disable collecting and reporting metrics. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Performance.disable', params);
  }

/** Enable collecting and reporting metrics. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Performance.enable', params);
  }

/** Retrieve current values of run-time metrics. */
  dart_async.Future<PerformanceGetMetricsResponse> getMetrics() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Performance.getMetrics', params)
        .then((response) => new PerformanceGetMetricsResponse(response));
  }

/** Current values of the metrics. */
  dart_async.Stream get onMetrics => _onMetrics.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'Performance.metrics', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onMetrics.close();
  }
}

class DevToolsSecurity {
  DevToolsSecurity(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onCertificateError =
      new dart_async.StreamController();

  dart_async.StreamController _onSecurityStateChanged =
      new dart_async.StreamController();

/** Disables tracking security state changes. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Security.disable', params);
  }

/** Enables tracking security state changes. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Security.enable', params);
  }

/** Enable/disable whether all certificate errors should be ignored. */
  dart_async.Future setIgnoreCertificateErrors({bool ignore}) {
    var params = {};
    if (ignore != null) params['ignore'] = ignore;

    return _devtools.rpc
        .sendRequest('Security.setIgnoreCertificateErrors', params);
  }

/** Handles a certificate error that fired a certificateError event. */
  dart_async.Future handleCertificateError({int eventId, String action}) {
    var params = {};
    if (eventId != null) params['eventId'] = eventId;

    if (action != null) params['action'] = action;

    return _devtools.rpc.sendRequest('Security.handleCertificateError', params);
  }

/** Enable/disable overriding certificate errors. If enabled, all certificate error events need to
be handled by the DevTools client and should be answered with handleCertificateError commands. */
  dart_async.Future setOverrideCertificateErrors({bool override}) {
    var params = {};
    if (override != null) params['override'] = override;

    return _devtools.rpc
        .sendRequest('Security.setOverrideCertificateErrors', params);
  }

/** There is a certificate error. If overriding certificate errors is enabled, then it should be
handled with the handleCertificateError command. Note: this event does not fire if the
certificate error has been allowed internally. Only one client per target should override
certificate errors at the same time. */
  dart_async.Stream get onCertificateError => _onCertificateError.stream;
/** The security state of the page changed. */
  dart_async.Stream get onSecurityStateChanged =>
      _onSecurityStateChanged.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'Security.certificateError', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Security.securityStateChanged', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onCertificateError.close();
    _onSecurityStateChanged.close();
  }
}

class DevToolsServiceWorker {
  DevToolsServiceWorker(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onWorkerErrorReported =
      new dart_async.StreamController();

  dart_async.StreamController _onWorkerRegistrationUpdated =
      new dart_async.StreamController();

  dart_async.StreamController _onWorkerVersionUpdated =
      new dart_async.StreamController();

/**  */
  dart_async.Future deliverPushMessage(
      {String origin, String registrationId, String data}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    if (registrationId != null) params['registrationId'] = registrationId;

    if (data != null) params['data'] = data;

    return _devtools.rpc
        .sendRequest('ServiceWorker.deliverPushMessage', params);
  }

/**  */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('ServiceWorker.disable', params);
  }

/**  */
  dart_async.Future dispatchSyncEvent(
      {String origin, String registrationId, String tag, bool lastChance}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    if (registrationId != null) params['registrationId'] = registrationId;

    if (tag != null) params['tag'] = tag;

    if (lastChance != null) params['lastChance'] = lastChance;

    return _devtools.rpc.sendRequest('ServiceWorker.dispatchSyncEvent', params);
  }

/**  */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('ServiceWorker.enable', params);
  }

/**  */
  dart_async.Future inspectWorker({String versionId}) {
    var params = {};
    if (versionId != null) params['versionId'] = versionId;

    return _devtools.rpc.sendRequest('ServiceWorker.inspectWorker', params);
  }

/**  */
  dart_async.Future setForceUpdateOnPageLoad({bool forceUpdateOnPageLoad}) {
    var params = {};
    if (forceUpdateOnPageLoad != null)
      params['forceUpdateOnPageLoad'] = forceUpdateOnPageLoad;

    return _devtools.rpc
        .sendRequest('ServiceWorker.setForceUpdateOnPageLoad', params);
  }

/**  */
  dart_async.Future skipWaiting({String scopeURL}) {
    var params = {};
    if (scopeURL != null) params['scopeURL'] = scopeURL;

    return _devtools.rpc.sendRequest('ServiceWorker.skipWaiting', params);
  }

/**  */
  dart_async.Future startWorker({String scopeURL}) {
    var params = {};
    if (scopeURL != null) params['scopeURL'] = scopeURL;

    return _devtools.rpc.sendRequest('ServiceWorker.startWorker', params);
  }

/**  */
  dart_async.Future stopAllWorkers() {
    var params = {};
    return _devtools.rpc.sendRequest('ServiceWorker.stopAllWorkers', params);
  }

/**  */
  dart_async.Future stopWorker({String versionId}) {
    var params = {};
    if (versionId != null) params['versionId'] = versionId;

    return _devtools.rpc.sendRequest('ServiceWorker.stopWorker', params);
  }

/**  */
  dart_async.Future unregister({String scopeURL}) {
    var params = {};
    if (scopeURL != null) params['scopeURL'] = scopeURL;

    return _devtools.rpc.sendRequest('ServiceWorker.unregister', params);
  }

/**  */
  dart_async.Future updateRegistration({String scopeURL}) {
    var params = {};
    if (scopeURL != null) params['scopeURL'] = scopeURL;

    return _devtools.rpc
        .sendRequest('ServiceWorker.updateRegistration', params);
  }

/**  */
  dart_async.Stream get onWorkerErrorReported => _onWorkerErrorReported.stream;
/**  */
  dart_async.Stream get onWorkerRegistrationUpdated =>
      _onWorkerRegistrationUpdated.stream;
/**  */
  dart_async.Stream get onWorkerVersionUpdated =>
      _onWorkerVersionUpdated.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'ServiceWorker.workerErrorReported', (json_rpc_2.Parameters params) {});

    rpc.registerMethod('ServiceWorker.workerRegistrationUpdated',
        (json_rpc_2.Parameters params) {});

    rpc.registerMethod('ServiceWorker.workerVersionUpdated',
        (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onWorkerErrorReported.close();
    _onWorkerRegistrationUpdated.close();
    _onWorkerVersionUpdated.close();
  }
}

class StorageGetUsageAndQuotaResponse {
  StorageGetUsageAndQuotaResponse(Map map) {
    usage = map['usage'];
    quota = map['quota'];
    usageBreakdown = map['usageBreakdown'];
  }

  num usage;

  num quota;

  List<UsageForType> usageBreakdown;
}

class DevToolsStorage {
  DevToolsStorage(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onCacheStorageContentUpdated =
      new dart_async.StreamController();

  dart_async.StreamController _onCacheStorageListUpdated =
      new dart_async.StreamController();

  dart_async.StreamController _onIndexedDBContentUpdated =
      new dart_async.StreamController();

  dart_async.StreamController _onIndexedDBListUpdated =
      new dart_async.StreamController();

/** Clears storage for origin. */
  dart_async.Future clearDataForOrigin({String origin, String storageTypes}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    if (storageTypes != null) params['storageTypes'] = storageTypes;

    return _devtools.rpc.sendRequest('Storage.clearDataForOrigin', params);
  }

/** Returns usage and quota in bytes. */
  dart_async.Future<StorageGetUsageAndQuotaResponse> getUsageAndQuota(
      {String origin}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    return _devtools.rpc
        .sendRequest('Storage.getUsageAndQuota', params)
        .then((response) => new StorageGetUsageAndQuotaResponse(response));
  }

/** Registers origin to be notified when an update occurs to its cache storage list. */
  dart_async.Future trackCacheStorageForOrigin({String origin}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    return _devtools.rpc
        .sendRequest('Storage.trackCacheStorageForOrigin', params);
  }

/** Registers origin to be notified when an update occurs to its IndexedDB. */
  dart_async.Future trackIndexedDBForOrigin({String origin}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    return _devtools.rpc.sendRequest('Storage.trackIndexedDBForOrigin', params);
  }

/** Unregisters origin from receiving notifications for cache storage. */
  dart_async.Future untrackCacheStorageForOrigin({String origin}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    return _devtools.rpc
        .sendRequest('Storage.untrackCacheStorageForOrigin', params);
  }

/** Unregisters origin from receiving notifications for IndexedDB. */
  dart_async.Future untrackIndexedDBForOrigin({String origin}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    return _devtools.rpc
        .sendRequest('Storage.untrackIndexedDBForOrigin', params);
  }

/** A cache's contents have been modified. */
  dart_async.Stream get onCacheStorageContentUpdated =>
      _onCacheStorageContentUpdated.stream;
/** A cache has been added/deleted. */
  dart_async.Stream get onCacheStorageListUpdated =>
      _onCacheStorageListUpdated.stream;
/** The origin's IndexedDB object store has been modified. */
  dart_async.Stream get onIndexedDBContentUpdated =>
      _onIndexedDBContentUpdated.stream;
/** The origin's IndexedDB database list has been modified. */
  dart_async.Stream get onIndexedDBListUpdated =>
      _onIndexedDBListUpdated.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Storage.cacheStorageContentUpdated',
        (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Storage.cacheStorageListUpdated', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Storage.indexedDBContentUpdated', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Storage.indexedDBListUpdated', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onCacheStorageContentUpdated.close();
    _onCacheStorageListUpdated.close();
    _onIndexedDBContentUpdated.close();
    _onIndexedDBListUpdated.close();
  }
}

class SystemInfoGetInfoResponse {
  SystemInfoGetInfoResponse(Map map) {
    gpu = map['gpu'];
    modelName = map['modelName'];
    modelVersion = map['modelVersion'];
    commandLine = map['commandLine'];
  }

  GPUInfo gpu;

  String modelName;

  String modelVersion;

  String commandLine;
}

class DevToolsSystemInfo {
  DevToolsSystemInfo(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Returns information about the system. */
  dart_async.Future<SystemInfoGetInfoResponse> getInfo() {
    var params = {};
    return _devtools.rpc
        .sendRequest('SystemInfo.getInfo', params)
        .then((response) => new SystemInfoGetInfoResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class TargetAttachToTargetResponse {
  TargetAttachToTargetResponse(Map map) {
    sessionId = map['sessionId'];
  }

  String sessionId;
}

class TargetCloseTargetResponse {
  TargetCloseTargetResponse(Map map) {
    success = map['success'];
  }

  bool success;
}

class TargetCreateBrowserContextResponse {
  TargetCreateBrowserContextResponse(Map map) {
    browserContextId = map['browserContextId'];
  }

  String browserContextId;
}

class TargetCreateTargetResponse {
  TargetCreateTargetResponse(Map map) {
    targetId = map['targetId'];
  }

  String targetId;
}

class TargetDisposeBrowserContextResponse {
  TargetDisposeBrowserContextResponse(Map map) {
    success = map['success'];
  }

  bool success;
}

class TargetGetTargetInfoResponse {
  TargetGetTargetInfoResponse(Map map) {
    targetInfo = map['targetInfo'];
  }

  TargetInfo targetInfo;
}

class TargetGetTargetsResponse {
  TargetGetTargetsResponse(Map map) {
    targetInfos = map['targetInfos'];
  }

  List<TargetInfo> targetInfos;
}

class DevToolsTarget {
  DevToolsTarget(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onAttachedToTarget =
      new dart_async.StreamController();

  dart_async.StreamController _onDetachedFromTarget =
      new dart_async.StreamController();

  dart_async.StreamController _onReceivedMessageFromTarget =
      new dart_async.StreamController();

  dart_async.StreamController _onTargetCreated =
      new dart_async.StreamController();

  dart_async.StreamController _onTargetDestroyed =
      new dart_async.StreamController();

  dart_async.StreamController _onTargetInfoChanged =
      new dart_async.StreamController();

/** Activates (focuses) the target. */
  dart_async.Future activateTarget({String targetId}) {
    var params = {};
    if (targetId != null) params['targetId'] = targetId;

    return _devtools.rpc.sendRequest('Target.activateTarget', params);
  }

/** Attaches to the target with given id. */
  dart_async.Future<TargetAttachToTargetResponse> attachToTarget(
      {String targetId}) {
    var params = {};
    if (targetId != null) params['targetId'] = targetId;

    return _devtools.rpc
        .sendRequest('Target.attachToTarget', params)
        .then((response) => new TargetAttachToTargetResponse(response));
  }

/** Closes the target. If the target is a page that gets closed too. */
  dart_async.Future<TargetCloseTargetResponse> closeTarget({String targetId}) {
    var params = {};
    if (targetId != null) params['targetId'] = targetId;

    return _devtools.rpc
        .sendRequest('Target.closeTarget', params)
        .then((response) => new TargetCloseTargetResponse(response));
  }

/** Creates a new empty BrowserContext. Similar to an incognito profile but you can have more than
one. */
  dart_async.Future<TargetCreateBrowserContextResponse> createBrowserContext() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Target.createBrowserContext', params)
        .then((response) => new TargetCreateBrowserContextResponse(response));
  }

/** Creates a new page. */
  dart_async.Future<TargetCreateTargetResponse> createTarget(
      {String url,
      int width,
      int height,
      String browserContextId,
      bool enableBeginFrameControl}) {
    var params = {};
    if (url != null) params['url'] = url;

    if (width != null) params['width'] = width;

    if (height != null) params['height'] = height;

    if (browserContextId != null) params['browserContextId'] = browserContextId;

    if (enableBeginFrameControl != null)
      params['enableBeginFrameControl'] = enableBeginFrameControl;

    return _devtools.rpc
        .sendRequest('Target.createTarget', params)
        .then((response) => new TargetCreateTargetResponse(response));
  }

/** Detaches session with given id. */
  dart_async.Future detachFromTarget({String sessionId, String targetId}) {
    var params = {};
    if (sessionId != null) params['sessionId'] = sessionId;

    if (targetId != null) params['targetId'] = targetId;

    return _devtools.rpc.sendRequest('Target.detachFromTarget', params);
  }

/** Deletes a BrowserContext, will fail of any open page uses it. */
  dart_async.Future<TargetDisposeBrowserContextResponse> disposeBrowserContext(
      {String browserContextId}) {
    var params = {};
    if (browserContextId != null) params['browserContextId'] = browserContextId;

    return _devtools.rpc
        .sendRequest('Target.disposeBrowserContext', params)
        .then((response) => new TargetDisposeBrowserContextResponse(response));
  }

/** Returns information about a target. */
  dart_async.Future<TargetGetTargetInfoResponse> getTargetInfo(
      {String targetId}) {
    var params = {};
    if (targetId != null) params['targetId'] = targetId;

    return _devtools.rpc
        .sendRequest('Target.getTargetInfo', params)
        .then((response) => new TargetGetTargetInfoResponse(response));
  }

/** Retrieves a list of available targets. */
  dart_async.Future<TargetGetTargetsResponse> getTargets() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Target.getTargets', params)
        .then((response) => new TargetGetTargetsResponse(response));
  }

/** Sends protocol message over session with given id. */
  dart_async.Future sendMessageToTarget(
      {String message, String sessionId, String targetId}) {
    var params = {};
    if (message != null) params['message'] = message;

    if (sessionId != null) params['sessionId'] = sessionId;

    if (targetId != null) params['targetId'] = targetId;

    return _devtools.rpc.sendRequest('Target.sendMessageToTarget', params);
  }

/** Controls whether to automatically attach to new targets which are considered to be related to
this one. When turned on, attaches to all existing related targets as well. When turned off,
automatically detaches from all currently attached targets. */
  dart_async.Future setAutoAttach(
      {bool autoAttach, bool waitForDebuggerOnStart}) {
    var params = {};
    if (autoAttach != null) params['autoAttach'] = autoAttach;

    if (waitForDebuggerOnStart != null)
      params['waitForDebuggerOnStart'] = waitForDebuggerOnStart;

    return _devtools.rpc.sendRequest('Target.setAutoAttach', params);
  }

/** Controls whether to discover available targets and notify via
`targetCreated/targetInfoChanged/targetDestroyed` events. */
  dart_async.Future setDiscoverTargets({bool discover}) {
    var params = {};
    if (discover != null) params['discover'] = discover;

    return _devtools.rpc.sendRequest('Target.setDiscoverTargets', params);
  }

/** Enables target discovery for the specified locations, when `setDiscoverTargets` was set to
`true`. */
  dart_async.Future setRemoteLocations({List<RemoteLocation> locations}) {
    var params = {};
    if (locations != null) params['locations'] = locations;

    return _devtools.rpc.sendRequest('Target.setRemoteLocations', params);
  }

/** Issued when attached to target because of auto-attach or `attachToTarget` command. */
  dart_async.Stream get onAttachedToTarget => _onAttachedToTarget.stream;
/** Issued when detached from target for any reason (including `detachFromTarget` command). Can be
issued multiple times per target if multiple sessions have been attached to it. */
  dart_async.Stream get onDetachedFromTarget => _onDetachedFromTarget.stream;
/** Notifies about a new protocol message received from the session (as reported in
`attachedToTarget` event). */
  dart_async.Stream get onReceivedMessageFromTarget =>
      _onReceivedMessageFromTarget.stream;
/** Issued when a possible inspection target is created. */
  dart_async.Stream get onTargetCreated => _onTargetCreated.stream;
/** Issued when a target is destroyed. */
  dart_async.Stream get onTargetDestroyed => _onTargetDestroyed.stream;
/** Issued when some information about a target has changed. This only happens between
`targetCreated` and `targetDestroyed`. */
  dart_async.Stream get onTargetInfoChanged => _onTargetInfoChanged.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'Target.attachedToTarget', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Target.detachedFromTarget', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Target.receivedMessageFromTarget', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Target.targetCreated', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Target.targetDestroyed', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Target.targetInfoChanged', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onAttachedToTarget.close();
    _onDetachedFromTarget.close();
    _onReceivedMessageFromTarget.close();
    _onTargetCreated.close();
    _onTargetDestroyed.close();
    _onTargetInfoChanged.close();
  }
}

class DevToolsTethering {
  DevToolsTethering(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onAccepted = new dart_async.StreamController();

/** Request browser port binding. */
  dart_async.Future bind({int port}) {
    var params = {};
    if (port != null) params['port'] = port;

    return _devtools.rpc.sendRequest('Tethering.bind', params);
  }

/** Request browser port unbinding. */
  dart_async.Future unbind({int port}) {
    var params = {};
    if (port != null) params['port'] = port;

    return _devtools.rpc.sendRequest('Tethering.unbind', params);
  }

/** Informs that port was successfully bound and got a specified connection id. */
  dart_async.Stream get onAccepted => _onAccepted.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Tethering.accepted', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onAccepted.close();
  }
}

class TracingGetCategoriesResponse {
  TracingGetCategoriesResponse(Map map) {
    categories = map['categories'];
  }

  List categories;
}

class TracingRequestMemoryDumpResponse {
  TracingRequestMemoryDumpResponse(Map map) {
    dumpGuid = map['dumpGuid'];
    success = map['success'];
  }

  String dumpGuid;

  bool success;
}

class DevToolsTracing {
  DevToolsTracing(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController _onBufferUsage =
      new dart_async.StreamController();

  dart_async.StreamController _onDataCollected =
      new dart_async.StreamController();

  dart_async.StreamController _onTracingComplete =
      new dart_async.StreamController();

/** Stop trace events collection. */
  dart_async.Future end() {
    var params = {};
    return _devtools.rpc.sendRequest('Tracing.end', params);
  }

/** Gets supported tracing categories. */
  dart_async.Future<TracingGetCategoriesResponse> getCategories() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Tracing.getCategories', params)
        .then((response) => new TracingGetCategoriesResponse(response));
  }

/** Record a clock sync marker in the trace. */
  dart_async.Future recordClockSyncMarker({String syncId}) {
    var params = {};
    if (syncId != null) params['syncId'] = syncId;

    return _devtools.rpc.sendRequest('Tracing.recordClockSyncMarker', params);
  }

/** Request a global memory dump. */
  dart_async.Future<TracingRequestMemoryDumpResponse> requestMemoryDump() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Tracing.requestMemoryDump', params)
        .then((response) => new TracingRequestMemoryDumpResponse(response));
  }

/** Start trace events collection. */
  dart_async.Future start(
      {String categories,
      String options,
      num bufferUsageReportingInterval,
      String transferMode,
      String streamCompression,
      TraceConfig traceConfig}) {
    var params = {};
    if (categories != null) params['categories'] = categories;

    if (options != null) params['options'] = options;

    if (bufferUsageReportingInterval != null)
      params['bufferUsageReportingInterval'] = bufferUsageReportingInterval;

    if (transferMode != null) params['transferMode'] = transferMode;

    if (streamCompression != null)
      params['streamCompression'] = streamCompression;

    if (traceConfig != null) params['traceConfig'] = traceConfig;

    return _devtools.rpc.sendRequest('Tracing.start', params);
  }

/**  */
  dart_async.Stream get onBufferUsage => _onBufferUsage.stream;
/** Contains an bucket of collected trace events. When tracing is stopped collected events will be
send as a sequence of dataCollected events followed by tracingComplete event. */
  dart_async.Stream get onDataCollected => _onDataCollected.stream;
/** Signals that tracing is stopped and there is no trace buffers pending flush, all data were
delivered via dataCollected events. */
  dart_async.Stream get onTracingComplete => _onTracingComplete.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod(
        'Tracing.bufferUsage', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Tracing.dataCollected', (json_rpc_2.Parameters params) {});

    rpc.registerMethod(
        'Tracing.tracingComplete', (json_rpc_2.Parameters params) {});
  }

  void _close() {
    _onBufferUsage.close();
    _onDataCollected.close();
    _onTracingComplete.close();
  }
}

abstract class ChromeDevToolsBase {
  ChromeDevToolsBase() {
    _devToolsConsole = new DevToolsConsole(this);
    _devToolsDebugger = new DevToolsDebugger(this);
    _devToolsHeapProfiler = new DevToolsHeapProfiler(this);
    _devToolsProfiler = new DevToolsProfiler(this);
    _devToolsRuntime = new DevToolsRuntime(this);
    _devToolsSchema = new DevToolsSchema(this);
    _devToolsAccessibility = new DevToolsAccessibility(this);
    _devToolsAnimation = new DevToolsAnimation(this);
    _devToolsApplicationCache = new DevToolsApplicationCache(this);
    _devToolsAudits = new DevToolsAudits(this);
    _devToolsBrowser = new DevToolsBrowser(this);
    _devToolsCSS = new DevToolsCSS(this);
    _devToolsCacheStorage = new DevToolsCacheStorage(this);
    _devToolsDOM = new DevToolsDOM(this);
    _devToolsDOMDebugger = new DevToolsDOMDebugger(this);
    _devToolsDOMSnapshot = new DevToolsDOMSnapshot(this);
    _devToolsDOMStorage = new DevToolsDOMStorage(this);
    _devToolsDatabase = new DevToolsDatabase(this);
    _devToolsDeviceOrientation = new DevToolsDeviceOrientation(this);
    _devToolsEmulation = new DevToolsEmulation(this);
    _devToolsHeadlessExperimental = new DevToolsHeadlessExperimental(this);
    _devToolsIO = new DevToolsIO(this);
    _devToolsIndexedDB = new DevToolsIndexedDB(this);
    _devToolsInput = new DevToolsInput(this);
    _devToolsInspector = new DevToolsInspector(this);
    _devToolsLayerTree = new DevToolsLayerTree(this);
    _devToolsLog = new DevToolsLog(this);
    _devToolsMemory = new DevToolsMemory(this);
    _devToolsNetwork = new DevToolsNetwork(this);
    _devToolsOverlay = new DevToolsOverlay(this);
    _devToolsPage = new DevToolsPage(this);
    _devToolsPerformance = new DevToolsPerformance(this);
    _devToolsSecurity = new DevToolsSecurity(this);
    _devToolsServiceWorker = new DevToolsServiceWorker(this);
    _devToolsStorage = new DevToolsStorage(this);
    _devToolsSystemInfo = new DevToolsSystemInfo(this);
    _devToolsTarget = new DevToolsTarget(this);
    _devToolsTethering = new DevToolsTethering(this);
    _devToolsTracing = new DevToolsTracing(this);
  }

  DevToolsConsole _devToolsConsole;

  DevToolsDebugger _devToolsDebugger;

  DevToolsHeapProfiler _devToolsHeapProfiler;

  DevToolsProfiler _devToolsProfiler;

  DevToolsRuntime _devToolsRuntime;

  DevToolsSchema _devToolsSchema;

  DevToolsAccessibility _devToolsAccessibility;

  DevToolsAnimation _devToolsAnimation;

  DevToolsApplicationCache _devToolsApplicationCache;

  DevToolsAudits _devToolsAudits;

  DevToolsBrowser _devToolsBrowser;

  DevToolsCSS _devToolsCSS;

  DevToolsCacheStorage _devToolsCacheStorage;

  DevToolsDOM _devToolsDOM;

  DevToolsDOMDebugger _devToolsDOMDebugger;

  DevToolsDOMSnapshot _devToolsDOMSnapshot;

  DevToolsDOMStorage _devToolsDOMStorage;

  DevToolsDatabase _devToolsDatabase;

  DevToolsDeviceOrientation _devToolsDeviceOrientation;

  DevToolsEmulation _devToolsEmulation;

  DevToolsHeadlessExperimental _devToolsHeadlessExperimental;

  DevToolsIO _devToolsIO;

  DevToolsIndexedDB _devToolsIndexedDB;

  DevToolsInput _devToolsInput;

  DevToolsInspector _devToolsInspector;

  DevToolsLayerTree _devToolsLayerTree;

  DevToolsLog _devToolsLog;

  DevToolsMemory _devToolsMemory;

  DevToolsNetwork _devToolsNetwork;

  DevToolsOverlay _devToolsOverlay;

  DevToolsPage _devToolsPage;

  DevToolsPerformance _devToolsPerformance;

  DevToolsSecurity _devToolsSecurity;

  DevToolsServiceWorker _devToolsServiceWorker;

  DevToolsStorage _devToolsStorage;

  DevToolsSystemInfo _devToolsSystemInfo;

  DevToolsTarget _devToolsTarget;

  DevToolsTethering _devToolsTethering;

  DevToolsTracing _devToolsTracing;

  void listen() {
    _devToolsConsole.listen(rpc);
    _devToolsDebugger.listen(rpc);
    _devToolsHeapProfiler.listen(rpc);
    _devToolsProfiler.listen(rpc);
    _devToolsRuntime.listen(rpc);
    _devToolsSchema.listen(rpc);
    _devToolsAccessibility.listen(rpc);
    _devToolsAnimation.listen(rpc);
    _devToolsApplicationCache.listen(rpc);
    _devToolsAudits.listen(rpc);
    _devToolsBrowser.listen(rpc);
    _devToolsCSS.listen(rpc);
    _devToolsCacheStorage.listen(rpc);
    _devToolsDOM.listen(rpc);
    _devToolsDOMDebugger.listen(rpc);
    _devToolsDOMSnapshot.listen(rpc);
    _devToolsDOMStorage.listen(rpc);
    _devToolsDatabase.listen(rpc);
    _devToolsDeviceOrientation.listen(rpc);
    _devToolsEmulation.listen(rpc);
    _devToolsHeadlessExperimental.listen(rpc);
    _devToolsIO.listen(rpc);
    _devToolsIndexedDB.listen(rpc);
    _devToolsInput.listen(rpc);
    _devToolsInspector.listen(rpc);
    _devToolsLayerTree.listen(rpc);
    _devToolsLog.listen(rpc);
    _devToolsMemory.listen(rpc);
    _devToolsNetwork.listen(rpc);
    _devToolsOverlay.listen(rpc);
    _devToolsPage.listen(rpc);
    _devToolsPerformance.listen(rpc);
    _devToolsSecurity.listen(rpc);
    _devToolsServiceWorker.listen(rpc);
    _devToolsStorage.listen(rpc);
    _devToolsSystemInfo.listen(rpc);
    _devToolsTarget.listen(rpc);
    _devToolsTethering.listen(rpc);
    _devToolsTracing.listen(rpc);
  }

  dart_async.Future close() async {
    _devToolsConsole._close();
    _devToolsDebugger._close();
    _devToolsHeapProfiler._close();
    _devToolsProfiler._close();
    _devToolsRuntime._close();
    _devToolsSchema._close();
    _devToolsAccessibility._close();
    _devToolsAnimation._close();
    _devToolsApplicationCache._close();
    _devToolsAudits._close();
    _devToolsBrowser._close();
    _devToolsCSS._close();
    _devToolsCacheStorage._close();
    _devToolsDOM._close();
    _devToolsDOMDebugger._close();
    _devToolsDOMSnapshot._close();
    _devToolsDOMStorage._close();
    _devToolsDatabase._close();
    _devToolsDeviceOrientation._close();
    _devToolsEmulation._close();
    _devToolsHeadlessExperimental._close();
    _devToolsIO._close();
    _devToolsIndexedDB._close();
    _devToolsInput._close();
    _devToolsInspector._close();
    _devToolsLayerTree._close();
    _devToolsLog._close();
    _devToolsMemory._close();
    _devToolsNetwork._close();
    _devToolsOverlay._close();
    _devToolsPage._close();
    _devToolsPerformance._close();
    _devToolsSecurity._close();
    _devToolsServiceWorker._close();
    _devToolsStorage._close();
    _devToolsSystemInfo._close();
    _devToolsTarget._close();
    _devToolsTethering._close();
    _devToolsTracing._close();
  }

  DevToolsConsole get console {
    return _devToolsConsole;
  }

  DevToolsDebugger get debugger {
    return _devToolsDebugger;
  }

  DevToolsHeapProfiler get heapProfiler {
    return _devToolsHeapProfiler;
  }

  DevToolsProfiler get profiler {
    return _devToolsProfiler;
  }

  DevToolsRuntime get runtime {
    return _devToolsRuntime;
  }

  DevToolsSchema get schema {
    return _devToolsSchema;
  }

  DevToolsAccessibility get accessibility {
    return _devToolsAccessibility;
  }

  DevToolsAnimation get animation {
    return _devToolsAnimation;
  }

  DevToolsApplicationCache get applicationCache {
    return _devToolsApplicationCache;
  }

  DevToolsAudits get audits {
    return _devToolsAudits;
  }

  DevToolsBrowser get browser {
    return _devToolsBrowser;
  }

  DevToolsCSS get css {
    return _devToolsCSS;
  }

  DevToolsCacheStorage get cacheStorage {
    return _devToolsCacheStorage;
  }

  DevToolsDOM get dom {
    return _devToolsDOM;
  }

  DevToolsDOMDebugger get domDebugger {
    return _devToolsDOMDebugger;
  }

  DevToolsDOMSnapshot get domSnapshot {
    return _devToolsDOMSnapshot;
  }

  DevToolsDOMStorage get domStorage {
    return _devToolsDOMStorage;
  }

  DevToolsDatabase get database {
    return _devToolsDatabase;
  }

  DevToolsDeviceOrientation get deviceOrientation {
    return _devToolsDeviceOrientation;
  }

  DevToolsEmulation get emulation {
    return _devToolsEmulation;
  }

  DevToolsHeadlessExperimental get headlessExperimental {
    return _devToolsHeadlessExperimental;
  }

  DevToolsIO get io {
    return _devToolsIO;
  }

  DevToolsIndexedDB get indexedDB {
    return _devToolsIndexedDB;
  }

  DevToolsInput get input {
    return _devToolsInput;
  }

  DevToolsInspector get inspector {
    return _devToolsInspector;
  }

  DevToolsLayerTree get layerTree {
    return _devToolsLayerTree;
  }

  DevToolsLog get log {
    return _devToolsLog;
  }

  DevToolsMemory get memory {
    return _devToolsMemory;
  }

  DevToolsNetwork get network {
    return _devToolsNetwork;
  }

  DevToolsOverlay get overlay {
    return _devToolsOverlay;
  }

  DevToolsPage get page {
    return _devToolsPage;
  }

  DevToolsPerformance get performance {
    return _devToolsPerformance;
  }

  DevToolsSecurity get security {
    return _devToolsSecurity;
  }

  DevToolsServiceWorker get serviceWorker {
    return _devToolsServiceWorker;
  }

  DevToolsStorage get storage {
    return _devToolsStorage;
  }

  DevToolsSystemInfo get systemInfo {
    return _devToolsSystemInfo;
  }

  DevToolsTarget get target {
    return _devToolsTarget;
  }

  DevToolsTethering get tethering {
    return _devToolsTethering;
  }

  DevToolsTracing get tracing {
    return _devToolsTracing;
  }

  json_rpc_2.Peer get rpc;
}

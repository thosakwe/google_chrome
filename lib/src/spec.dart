import 'dart:async' as dart_async;
import 'package:json_rpc_2/json_rpc_2.dart' as json_rpc_2;
// AUTO-GENERATED. DO NOT MODIFY BY HAND.
//
// Chrome DevTools Protocol v1.3

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
  Object scriptId;

/** Line number in the script (0-based). */
  int lineNumber;

/** Column number in the script (0-based). */
  int columnNumber;

/** Event handler function value. */
  Object handler;

/** Event original handler function value. */
  Object originalHandler;

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
  Object timestamp;

/** URL of the resource if known. */
  String url;

/** Line number in the resource. */
  int lineNumber;

/** JavaScript stack trace. */
  Object stackTrace;

/** Identifier of the network request associated with this entry. */
  String networkRequestId;

/** Identifier of the worker associated with this entry. */
  String workerId;

/** Call arguments. */
  List<Object> args;

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
  Object stack;

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
    return _devtools.client.sendRequest('Accessibility.getPartialAXTree', {
      "nodeId": nodeId,
      "fetchRelatives": fetchRelatives
    }).then((response) => new AccessibilityGetPartialAXTreeResponse(response));
  }
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

  Object remoteObject;
}

class DevToolsAnimation {
  DevToolsAnimation(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Disables animation domain notifications. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('Animation.disable', {});
  }

/** Enables animation domain notifications. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('Animation.enable', {});
  }

/** Returns the current time of the an animation. */
  dart_async.Future<AnimationGetCurrentTimeResponse> getCurrentTime(
      {String id}) {
    return _devtools.client
        .sendRequest('Animation.getCurrentTime', {"id": id}).then(
            (response) => new AnimationGetCurrentTimeResponse(response));
  }

/** Gets the playback rate of the document timeline. */
  dart_async.Future<AnimationGetPlaybackRateResponse> getPlaybackRate() {
    return _devtools.client.sendRequest('Animation.getPlaybackRate', {}).then(
        (response) => new AnimationGetPlaybackRateResponse(response));
  }

/** Releases a set of animations to no longer be manipulated. */
  dart_async.Future releaseAnimations({List animations}) {
    return _devtools.client
        .sendRequest('Animation.releaseAnimations', {"animations": animations});
  }

/** Gets the remote object of the Animation. */
  dart_async.Future<AnimationResolveAnimationResponse> resolveAnimation(
      {String animationId}) {
    return _devtools.client.sendRequest('Animation.resolveAnimation', {
      "animationId": animationId
    }).then((response) => new AnimationResolveAnimationResponse(response));
  }

/** Seek a set of animations to a particular time within each animation. */
  dart_async.Future seekAnimations({List animations, num currentTime}) {
    return _devtools.client.sendRequest('Animation.seekAnimations',
        {"animations": animations, "currentTime": currentTime});
  }

/** Sets the paused state of a set of animations. */
  dart_async.Future setPaused({List animations, bool paused}) {
    return _devtools.client.sendRequest(
        'Animation.setPaused', {"animations": animations, "paused": paused});
  }

/** Sets the playback rate of the document timeline. */
  dart_async.Future setPlaybackRate({num playbackRate}) {
    return _devtools.client.sendRequest(
        'Animation.setPlaybackRate', {"playbackRate": playbackRate});
  }

/** Sets the timing of an animation node. */
  dart_async.Future setTiming({String animationId, num duration, num delay}) {
    return _devtools.client.sendRequest('Animation.setTiming',
        {"animationId": animationId, "duration": duration, "delay": delay});
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

/** Enables application cache domain notifications. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('ApplicationCache.enable', {});
  }

/** Returns relevant application cache data for the document in given frame. */
  dart_async.Future<ApplicationCacheGetApplicationCacheForFrameResponse>
      getApplicationCacheForFrame({String frameId}) {
    return _devtools.client.sendRequest(
        'ApplicationCache.getApplicationCacheForFrame', {
      "frameId": frameId
    }).then((response) =>
        new ApplicationCacheGetApplicationCacheForFrameResponse(response));
  }

/** Returns array of frame identifiers with manifest urls for each frame containing a document
associated with some application cache. */
  dart_async.Future<ApplicationCacheGetFramesWithManifestsResponse>
      getFramesWithManifests() {
    return _devtools.client
        .sendRequest('ApplicationCache.getFramesWithManifests', {}).then(
            (response) =>
                new ApplicationCacheGetFramesWithManifestsResponse(response));
  }

/** Returns manifest URL for document in the given frame. */
  dart_async.Future<ApplicationCacheGetManifestForFrameResponse>
      getManifestForFrame({String frameId}) {
    return _devtools.client.sendRequest(
        'ApplicationCache.getManifestForFrame', {
      "frameId": frameId
    }).then((response) =>
        new ApplicationCacheGetManifestForFrameResponse(response));
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
    return _devtools.client.sendRequest('Audits.getEncodedResponse', {
      "requestId": requestId,
      "encoding": encoding,
      "quality": quality,
      "sizeOnly": sizeOnly
    }).then((response) => new AuditsGetEncodedResponseResponse(response));
  }
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
    return _devtools.client.sendRequest('Browser.close', {});
  }

/** Returns version information. */
  dart_async.Future<BrowserGetVersionResponse> getVersion() {
    return _devtools.client.sendRequest('Browser.getVersion', {}).then(
        (response) => new BrowserGetVersionResponse(response));
  }

/** Get Chrome histograms. */
  dart_async.Future<BrowserGetHistogramsResponse> getHistograms(
      {String query}) {
    return _devtools.client
        .sendRequest('Browser.getHistograms', {"query": query}).then(
            (response) => new BrowserGetHistogramsResponse(response));
  }

/** Get a Chrome histogram by name. */
  dart_async.Future<BrowserGetHistogramResponse> getHistogram({String name}) {
    return _devtools.client
        .sendRequest('Browser.getHistogram', {"name": name}).then(
            (response) => new BrowserGetHistogramResponse(response));
  }

/** Get position and size of the browser window. */
  dart_async.Future<BrowserGetWindowBoundsResponse> getWindowBounds(
      {int windowId}) {
    return _devtools.client
        .sendRequest('Browser.getWindowBounds', {"windowId": windowId}).then(
            (response) => new BrowserGetWindowBoundsResponse(response));
  }

/** Get the browser window that contains the devtools target. */
  dart_async.Future<BrowserGetWindowForTargetResponse> getWindowForTarget(
      {String targetId}) {
    return _devtools.client
        .sendRequest('Browser.getWindowForTarget', {"targetId": targetId}).then(
            (response) => new BrowserGetWindowForTargetResponse(response));
  }

/** Set position and/or size of the browser window. */
  dart_async.Future setWindowBounds({int windowId, Bounds bounds}) {
    return _devtools.client.sendRequest(
        'Browser.setWindowBounds', {"windowId": windowId, "bounds": bounds});
  }
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

/** Inserts a new rule with the given `ruleText` in a stylesheet with given `styleSheetId`, at the
position specified by `location`. */
  dart_async.Future<CSSAddRuleResponse> addRule(
      {String styleSheetId, String ruleText, SourceRange location}) {
    return _devtools.client.sendRequest('CSS.addRule', {
      "styleSheetId": styleSheetId,
      "ruleText": ruleText,
      "location": location
    }).then((response) => new CSSAddRuleResponse(response));
  }

/** Returns all class names from specified stylesheet. */
  dart_async.Future<CSSCollectClassNamesResponse> collectClassNames(
      {String styleSheetId}) {
    return _devtools.client.sendRequest('CSS.collectClassNames', {
      "styleSheetId": styleSheetId
    }).then((response) => new CSSCollectClassNamesResponse(response));
  }

/** Creates a new special "via-inspector" stylesheet in the frame with given `frameId`. */
  dart_async.Future<CSSCreateStyleSheetResponse> createStyleSheet(
      {String frameId}) {
    return _devtools.client
        .sendRequest('CSS.createStyleSheet', {"frameId": frameId}).then(
            (response) => new CSSCreateStyleSheetResponse(response));
  }

/** Disables the CSS agent for the given page. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('CSS.disable', {});
  }

/** Enables the CSS agent for the given page. Clients should not assume that the CSS agent has been
enabled until the result of this command is received. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('CSS.enable', {});
  }

/** Ensures that the given node will have specified pseudo-classes whenever its style is computed by
the browser. */
  dart_async.Future forcePseudoState({int nodeId, List forcedPseudoClasses}) {
    return _devtools.client.sendRequest('CSS.forcePseudoState',
        {"nodeId": nodeId, "forcedPseudoClasses": forcedPseudoClasses});
  }

/**  */
  dart_async.Future<CSSGetBackgroundColorsResponse> getBackgroundColors(
      {int nodeId}) {
    return _devtools.client
        .sendRequest('CSS.getBackgroundColors', {"nodeId": nodeId}).then(
            (response) => new CSSGetBackgroundColorsResponse(response));
  }

/** Returns the computed style for a DOM node identified by `nodeId`. */
  dart_async.Future<CSSGetComputedStyleForNodeResponse> getComputedStyleForNode(
      {int nodeId}) {
    return _devtools.client
        .sendRequest('CSS.getComputedStyleForNode', {"nodeId": nodeId}).then(
            (response) => new CSSGetComputedStyleForNodeResponse(response));
  }

/** Returns the styles defined inline (explicitly in the "style" attribute and implicitly, using DOM
attributes) for a DOM node identified by `nodeId`. */
  dart_async.Future<CSSGetInlineStylesForNodeResponse> getInlineStylesForNode(
      {int nodeId}) {
    return _devtools.client
        .sendRequest('CSS.getInlineStylesForNode', {"nodeId": nodeId}).then(
            (response) => new CSSGetInlineStylesForNodeResponse(response));
  }

/** Returns requested styles for a DOM node identified by `nodeId`. */
  dart_async.Future<CSSGetMatchedStylesForNodeResponse> getMatchedStylesForNode(
      {int nodeId}) {
    return _devtools.client
        .sendRequest('CSS.getMatchedStylesForNode', {"nodeId": nodeId}).then(
            (response) => new CSSGetMatchedStylesForNodeResponse(response));
  }

/** Returns all media queries parsed by the rendering engine. */
  dart_async.Future<CSSGetMediaQueriesResponse> getMediaQueries() {
    return _devtools.client.sendRequest('CSS.getMediaQueries', {}).then(
        (response) => new CSSGetMediaQueriesResponse(response));
  }

/** Requests information about platform fonts which we used to render child TextNodes in the given
node. */
  dart_async.Future<CSSGetPlatformFontsForNodeResponse> getPlatformFontsForNode(
      {int nodeId}) {
    return _devtools.client
        .sendRequest('CSS.getPlatformFontsForNode', {"nodeId": nodeId}).then(
            (response) => new CSSGetPlatformFontsForNodeResponse(response));
  }

/** Returns the current textual content and the URL for a stylesheet. */
  dart_async.Future<CSSGetStyleSheetTextResponse> getStyleSheetText(
      {String styleSheetId}) {
    return _devtools.client.sendRequest('CSS.getStyleSheetText', {
      "styleSheetId": styleSheetId
    }).then((response) => new CSSGetStyleSheetTextResponse(response));
  }

/** Find a rule with the given active property for the given node and set the new value for this
property */
  dart_async.Future setEffectivePropertyValueForNode(
      {int nodeId, String propertyName, String value}) {
    return _devtools.client.sendRequest('CSS.setEffectivePropertyValueForNode',
        {"nodeId": nodeId, "propertyName": propertyName, "value": value});
  }

/** Modifies the keyframe rule key text. */
  dart_async.Future<CSSSetKeyframeKeyResponse> setKeyframeKey(
      {String styleSheetId, SourceRange range, String keyText}) {
    return _devtools.client.sendRequest('CSS.setKeyframeKey', {
      "styleSheetId": styleSheetId,
      "range": range,
      "keyText": keyText
    }).then((response) => new CSSSetKeyframeKeyResponse(response));
  }

/** Modifies the rule selector. */
  dart_async.Future<CSSSetMediaTextResponse> setMediaText(
      {String styleSheetId, SourceRange range, String text}) {
    return _devtools.client.sendRequest('CSS.setMediaText', {
      "styleSheetId": styleSheetId,
      "range": range,
      "text": text
    }).then((response) => new CSSSetMediaTextResponse(response));
  }

/** Modifies the rule selector. */
  dart_async.Future<CSSSetRuleSelectorResponse> setRuleSelector(
      {String styleSheetId, SourceRange range, String selector}) {
    return _devtools.client.sendRequest('CSS.setRuleSelector', {
      "styleSheetId": styleSheetId,
      "range": range,
      "selector": selector
    }).then((response) => new CSSSetRuleSelectorResponse(response));
  }

/** Sets the new stylesheet text. */
  dart_async.Future<CSSSetStyleSheetTextResponse> setStyleSheetText(
      {String styleSheetId, String text}) {
    return _devtools.client.sendRequest('CSS.setStyleSheetText', {
      "styleSheetId": styleSheetId,
      "text": text
    }).then((response) => new CSSSetStyleSheetTextResponse(response));
  }

/** Applies specified style edits one after another in the given order. */
  dart_async.Future<CSSSetStyleTextsResponse> setStyleTexts(
      {List<StyleDeclarationEdit> edits}) {
    return _devtools.client
        .sendRequest('CSS.setStyleTexts', {"edits": edits}).then(
            (response) => new CSSSetStyleTextsResponse(response));
  }

/** Enables the selector recording. */
  dart_async.Future startRuleUsageTracking() {
    return _devtools.client.sendRequest('CSS.startRuleUsageTracking', {});
  }

/** Stop tracking rule usage and return the list of rules that were used since last call to
`takeCoverageDelta` (or since start of coverage instrumentation) */
  dart_async.Future<CSSStopRuleUsageTrackingResponse> stopRuleUsageTracking() {
    return _devtools.client.sendRequest('CSS.stopRuleUsageTracking', {}).then(
        (response) => new CSSStopRuleUsageTrackingResponse(response));
  }

/** Obtain list of rules that became used since last call to this method (or since start of coverage
instrumentation) */
  dart_async.Future<CSSTakeCoverageDeltaResponse> takeCoverageDelta() {
    return _devtools.client.sendRequest('CSS.takeCoverageDelta', {}).then(
        (response) => new CSSTakeCoverageDeltaResponse(response));
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
    return _devtools.client
        .sendRequest('CacheStorage.deleteCache', {"cacheId": cacheId});
  }

/** Deletes a cache entry. */
  dart_async.Future deleteEntry({String cacheId, String request}) {
    return _devtools.client.sendRequest(
        'CacheStorage.deleteEntry', {"cacheId": cacheId, "request": request});
  }

/** Requests cache names. */
  dart_async.Future<CacheStorageRequestCacheNamesResponse> requestCacheNames(
      {String securityOrigin}) {
    return _devtools.client.sendRequest('CacheStorage.requestCacheNames', {
      "securityOrigin": securityOrigin
    }).then((response) => new CacheStorageRequestCacheNamesResponse(response));
  }

/** Fetches cache entry. */
  dart_async.Future<CacheStorageRequestCachedResponseResponse>
      requestCachedResponse({String cacheId, String requestURL}) {
    return _devtools.client.sendRequest('CacheStorage.requestCachedResponse', {
      "cacheId": cacheId,
      "requestURL": requestURL
    }).then(
        (response) => new CacheStorageRequestCachedResponseResponse(response));
  }

/** Requests data from cache. */
  dart_async.Future<CacheStorageRequestEntriesResponse> requestEntries(
      {String cacheId, int skipCount, int pageSize}) {
    return _devtools.client.sendRequest('CacheStorage.requestEntries', {
      "cacheId": cacheId,
      "skipCount": skipCount,
      "pageSize": pageSize
    }).then((response) => new CacheStorageRequestEntriesResponse(response));
  }
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

  Object object;
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

/** Collects class names for the node with given id and all of it's child nodes. */
  dart_async.Future<DOMCollectClassNamesFromSubtreeResponse>
      collectClassNamesFromSubtree({int nodeId}) {
    return _devtools.client.sendRequest('DOM.collectClassNamesFromSubtree', {
      "nodeId": nodeId
    }).then(
        (response) => new DOMCollectClassNamesFromSubtreeResponse(response));
  }

/** Creates a deep copy of the specified node and places it into the target container before the
given anchor. */
  dart_async.Future<DOMCopyToResponse> copyTo(
      {int nodeId, int targetNodeId, int insertBeforeNodeId}) {
    return _devtools.client.sendRequest('DOM.copyTo', {
      "nodeId": nodeId,
      "targetNodeId": targetNodeId,
      "insertBeforeNodeId": insertBeforeNodeId
    }).then((response) => new DOMCopyToResponse(response));
  }

/** Describes node given its id, does not require domain to be enabled. Does not start tracking any
objects, can be used for automation. */
  dart_async.Future<DOMDescribeNodeResponse> describeNode(
      {int nodeId,
      int backendNodeId,
      Object objectId,
      int depth,
      bool pierce}) {
    return _devtools.client.sendRequest('DOM.describeNode', {
      "nodeId": nodeId,
      "backendNodeId": backendNodeId,
      "objectId": objectId,
      "depth": depth,
      "pierce": pierce
    }).then((response) => new DOMDescribeNodeResponse(response));
  }

/** Disables DOM agent for the given page. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('DOM.disable', {});
  }

/** Discards search results from the session with the given id. `getSearchResults` should no longer
be called for that search. */
  dart_async.Future discardSearchResults({String searchId}) {
    return _devtools.client
        .sendRequest('DOM.discardSearchResults', {"searchId": searchId});
  }

/** Enables DOM agent for the given page. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('DOM.enable', {});
  }

/** Focuses the given element. */
  dart_async.Future focus({int nodeId, int backendNodeId, Object objectId}) {
    return _devtools.client.sendRequest('DOM.focus', {
      "nodeId": nodeId,
      "backendNodeId": backendNodeId,
      "objectId": objectId
    });
  }

/** Returns attributes for the specified node. */
  dart_async.Future<DOMGetAttributesResponse> getAttributes({int nodeId}) {
    return _devtools.client
        .sendRequest('DOM.getAttributes', {"nodeId": nodeId}).then(
            (response) => new DOMGetAttributesResponse(response));
  }

/** Returns boxes for the given node. */
  dart_async.Future<DOMGetBoxModelResponse> getBoxModel(
      {int nodeId, int backendNodeId, Object objectId}) {
    return _devtools.client.sendRequest('DOM.getBoxModel', {
      "nodeId": nodeId,
      "backendNodeId": backendNodeId,
      "objectId": objectId
    }).then((response) => new DOMGetBoxModelResponse(response));
  }

/** Returns the root DOM node (and optionally the subtree) to the caller. */
  dart_async.Future<DOMGetDocumentResponse> getDocument(
      {int depth, bool pierce}) {
    return _devtools.client.sendRequest('DOM.getDocument', {
      "depth": depth,
      "pierce": pierce
    }).then((response) => new DOMGetDocumentResponse(response));
  }

/** Returns the root DOM node (and optionally the subtree) to the caller. */
  dart_async.Future<DOMGetFlattenedDocumentResponse> getFlattenedDocument(
      {int depth, bool pierce}) {
    return _devtools.client.sendRequest('DOM.getFlattenedDocument', {
      "depth": depth,
      "pierce": pierce
    }).then((response) => new DOMGetFlattenedDocumentResponse(response));
  }

/** Returns node id at given location. */
  dart_async.Future<DOMGetNodeForLocationResponse> getNodeForLocation(
      {int x, int y, bool includeUserAgentShadowDOM}) {
    return _devtools.client.sendRequest('DOM.getNodeForLocation', {
      "x": x,
      "y": y,
      "includeUserAgentShadowDOM": includeUserAgentShadowDOM
    }).then((response) => new DOMGetNodeForLocationResponse(response));
  }

/** Returns node's HTML markup. */
  dart_async.Future<DOMGetOuterHTMLResponse> getOuterHTML(
      {int nodeId, int backendNodeId, Object objectId}) {
    return _devtools.client.sendRequest('DOM.getOuterHTML', {
      "nodeId": nodeId,
      "backendNodeId": backendNodeId,
      "objectId": objectId
    }).then((response) => new DOMGetOuterHTMLResponse(response));
  }

/** Returns the id of the nearest ancestor that is a relayout boundary. */
  dart_async.Future<DOMGetRelayoutBoundaryResponse> getRelayoutBoundary(
      {int nodeId}) {
    return _devtools.client
        .sendRequest('DOM.getRelayoutBoundary', {"nodeId": nodeId}).then(
            (response) => new DOMGetRelayoutBoundaryResponse(response));
  }

/** Returns search results from given `fromIndex` to given `toIndex` from the search with the given
identifier. */
  dart_async.Future<DOMGetSearchResultsResponse> getSearchResults(
      {String searchId, int fromIndex, int toIndex}) {
    return _devtools.client.sendRequest('DOM.getSearchResults', {
      "searchId": searchId,
      "fromIndex": fromIndex,
      "toIndex": toIndex
    }).then((response) => new DOMGetSearchResultsResponse(response));
  }

/** Hides any highlight. */
  dart_async.Future hideHighlight() {
    return _devtools.client.sendRequest('DOM.hideHighlight', {});
  }

/** Highlights DOM node. */
  dart_async.Future highlightNode() {
    return _devtools.client.sendRequest('DOM.highlightNode', {});
  }

/** Highlights given rectangle. */
  dart_async.Future highlightRect() {
    return _devtools.client.sendRequest('DOM.highlightRect', {});
  }

/** Marks last undoable state. */
  dart_async.Future markUndoableState() {
    return _devtools.client.sendRequest('DOM.markUndoableState', {});
  }

/** Moves node into the new container, places it before the given anchor. */
  dart_async.Future<DOMMoveToResponse> moveTo(
      {int nodeId, int targetNodeId, int insertBeforeNodeId}) {
    return _devtools.client.sendRequest('DOM.moveTo', {
      "nodeId": nodeId,
      "targetNodeId": targetNodeId,
      "insertBeforeNodeId": insertBeforeNodeId
    }).then((response) => new DOMMoveToResponse(response));
  }

/** Searches for a given string in the DOM tree. Use `getSearchResults` to access search results or
`cancelSearch` to end this search session. */
  dart_async.Future<DOMPerformSearchResponse> performSearch(
      {String query, bool includeUserAgentShadowDOM}) {
    return _devtools.client.sendRequest('DOM.performSearch', {
      "query": query,
      "includeUserAgentShadowDOM": includeUserAgentShadowDOM
    }).then((response) => new DOMPerformSearchResponse(response));
  }

/** Requests that the node is sent to the caller given its path. // FIXME, use XPath */
  dart_async.Future<DOMPushNodeByPathToFrontendResponse>
      pushNodeByPathToFrontend({String path}) {
    return _devtools.client
        .sendRequest('DOM.pushNodeByPathToFrontend', {"path": path}).then(
            (response) => new DOMPushNodeByPathToFrontendResponse(response));
  }

/** Requests that a batch of nodes is sent to the caller given their backend node ids. */
  dart_async.Future<DOMPushNodesByBackendIdsToFrontendResponse>
      pushNodesByBackendIdsToFrontend({List<int> backendNodeIds}) {
    return _devtools.client.sendRequest('DOM.pushNodesByBackendIdsToFrontend', {
      "backendNodeIds": backendNodeIds
    }).then(
        (response) => new DOMPushNodesByBackendIdsToFrontendResponse(response));
  }

/** Executes `querySelector` on a given node. */
  dart_async.Future<DOMQuerySelectorResponse> querySelector(
      {int nodeId, String selector}) {
    return _devtools.client.sendRequest('DOM.querySelector', {
      "nodeId": nodeId,
      "selector": selector
    }).then((response) => new DOMQuerySelectorResponse(response));
  }

/** Executes `querySelectorAll` on a given node. */
  dart_async.Future<DOMQuerySelectorAllResponse> querySelectorAll(
      {int nodeId, String selector}) {
    return _devtools.client.sendRequest('DOM.querySelectorAll', {
      "nodeId": nodeId,
      "selector": selector
    }).then((response) => new DOMQuerySelectorAllResponse(response));
  }

/** Re-does the last undone action. */
  dart_async.Future redo() {
    return _devtools.client.sendRequest('DOM.redo', {});
  }

/** Removes attribute with given name from an element with given id. */
  dart_async.Future removeAttribute({int nodeId, String name}) {
    return _devtools.client
        .sendRequest('DOM.removeAttribute', {"nodeId": nodeId, "name": name});
  }

/** Removes node with given id. */
  dart_async.Future removeNode({int nodeId}) {
    return _devtools.client.sendRequest('DOM.removeNode', {"nodeId": nodeId});
  }

/** Requests that children of the node with given id are returned to the caller in form of
`setChildNodes` events where not only immediate children are retrieved, but all children down to
the specified depth. */
  dart_async.Future requestChildNodes({int nodeId, int depth, bool pierce}) {
    return _devtools.client.sendRequest('DOM.requestChildNodes',
        {"nodeId": nodeId, "depth": depth, "pierce": pierce});
  }

/** Requests that the node is sent to the caller given the JavaScript node object reference. All
nodes that form the path from the node to the root are also sent to the client as a series of
`setChildNodes` notifications. */
  dart_async.Future<DOMRequestNodeResponse> requestNode({Object objectId}) {
    return _devtools.client
        .sendRequest('DOM.requestNode', {"objectId": objectId}).then(
            (response) => new DOMRequestNodeResponse(response));
  }

/** Resolves the JavaScript node object for a given NodeId or BackendNodeId. */
  dart_async.Future<DOMResolveNodeResponse> resolveNode(
      {int nodeId, int backendNodeId, String objectGroup}) {
    return _devtools.client.sendRequest('DOM.resolveNode', {
      "nodeId": nodeId,
      "backendNodeId": backendNodeId,
      "objectGroup": objectGroup
    }).then((response) => new DOMResolveNodeResponse(response));
  }

/** Sets attribute for an element with given id. */
  dart_async.Future setAttributeValue({int nodeId, String name, String value}) {
    return _devtools.client.sendRequest('DOM.setAttributeValue',
        {"nodeId": nodeId, "name": name, "value": value});
  }

/** Sets attributes on element with given id. This method is useful when user edits some existing
attribute value and types in several attribute name/value pairs. */
  dart_async.Future setAttributesAsText(
      {int nodeId, String text, String name}) {
    return _devtools.client.sendRequest('DOM.setAttributesAsText',
        {"nodeId": nodeId, "text": text, "name": name});
  }

/** Sets files for the given file input element. */
  dart_async.Future setFileInputFiles(
      {List files, int nodeId, int backendNodeId, Object objectId}) {
    return _devtools.client.sendRequest('DOM.setFileInputFiles', {
      "files": files,
      "nodeId": nodeId,
      "backendNodeId": backendNodeId,
      "objectId": objectId
    });
  }

/** Enables console to refer to the node with given id via $x (see Command Line API for more details
$x functions). */
  dart_async.Future setInspectedNode({int nodeId}) {
    return _devtools.client
        .sendRequest('DOM.setInspectedNode', {"nodeId": nodeId});
  }

/** Sets node name for a node with given id. */
  dart_async.Future<DOMSetNodeNameResponse> setNodeName(
      {int nodeId, String name}) {
    return _devtools.client
        .sendRequest('DOM.setNodeName', {"nodeId": nodeId, "name": name}).then(
            (response) => new DOMSetNodeNameResponse(response));
  }

/** Sets node value for a node with given id. */
  dart_async.Future setNodeValue({int nodeId, String value}) {
    return _devtools.client
        .sendRequest('DOM.setNodeValue', {"nodeId": nodeId, "value": value});
  }

/** Sets node HTML markup, returns new node id. */
  dart_async.Future setOuterHTML({int nodeId, String outerHTML}) {
    return _devtools.client.sendRequest(
        'DOM.setOuterHTML', {"nodeId": nodeId, "outerHTML": outerHTML});
  }

/** Undoes the last performed action. */
  dart_async.Future undo() {
    return _devtools.client.sendRequest('DOM.undo', {});
  }

/** Returns iframe node that owns iframe with the given domain. */
  dart_async.Future<DOMGetFrameOwnerResponse> getFrameOwner({String frameId}) {
    return _devtools.client
        .sendRequest('DOM.getFrameOwner', {"frameId": frameId}).then(
            (response) => new DOMGetFrameOwnerResponse(response));
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
      {Object objectId, int depth, bool pierce}) {
    return _devtools.client.sendRequest('DOMDebugger.getEventListeners', {
      "objectId": objectId,
      "depth": depth,
      "pierce": pierce
    }).then((response) => new DOMDebuggerGetEventListenersResponse(response));
  }

/** Removes DOM breakpoint that was set using `setDOMBreakpoint`. */
  dart_async.Future removeDOMBreakpoint({int nodeId, String type}) {
    return _devtools.client.sendRequest(
        'DOMDebugger.removeDOMBreakpoint', {"nodeId": nodeId, "type": type});
  }

/** Removes breakpoint on particular DOM event. */
  dart_async.Future removeEventListenerBreakpoint(
      {String eventName, String targetName}) {
    return _devtools.client.sendRequest(
        'DOMDebugger.removeEventListenerBreakpoint',
        {"eventName": eventName, "targetName": targetName});
  }

/** Removes breakpoint on particular native event. */
  dart_async.Future removeInstrumentationBreakpoint({String eventName}) {
    return _devtools.client.sendRequest(
        'DOMDebugger.removeInstrumentationBreakpoint',
        {"eventName": eventName});
  }

/** Removes breakpoint from XMLHttpRequest. */
  dart_async.Future removeXHRBreakpoint({String url}) {
    return _devtools.client
        .sendRequest('DOMDebugger.removeXHRBreakpoint', {"url": url});
  }

/** Sets breakpoint on particular operation with DOM. */
  dart_async.Future setDOMBreakpoint({int nodeId, String type}) {
    return _devtools.client.sendRequest(
        'DOMDebugger.setDOMBreakpoint', {"nodeId": nodeId, "type": type});
  }

/** Sets breakpoint on particular DOM event. */
  dart_async.Future setEventListenerBreakpoint(
      {String eventName, String targetName}) {
    return _devtools.client.sendRequest(
        'DOMDebugger.setEventListenerBreakpoint',
        {"eventName": eventName, "targetName": targetName});
  }

/** Sets breakpoint on particular native event. */
  dart_async.Future setInstrumentationBreakpoint({String eventName}) {
    return _devtools.client.sendRequest(
        'DOMDebugger.setInstrumentationBreakpoint', {"eventName": eventName});
  }

/** Sets breakpoint on XMLHttpRequest. */
  dart_async.Future setXHRBreakpoint({String url}) {
    return _devtools.client
        .sendRequest('DOMDebugger.setXHRBreakpoint', {"url": url});
  }
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
    return _devtools.client.sendRequest('DOMSnapshot.getSnapshot', {
      "computedStyleWhitelist": computedStyleWhitelist,
      "includeEventListeners": includeEventListeners
    }).then((response) => new DOMSnapshotGetSnapshotResponse(response));
  }
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

/**  */
  dart_async.Future clear({StorageId storageId}) {
    return _devtools.client
        .sendRequest('DOMStorage.clear', {"storageId": storageId});
  }

/** Disables storage tracking, prevents storage events from being sent to the client. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('DOMStorage.disable', {});
  }

/** Enables storage tracking, storage events will now be delivered to the client. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('DOMStorage.enable', {});
  }

/**  */
  dart_async.Future<DOMStorageGetDOMStorageItemsResponse> getDOMStorageItems(
      {StorageId storageId}) {
    return _devtools.client.sendRequest('DOMStorage.getDOMStorageItems', {
      "storageId": storageId
    }).then((response) => new DOMStorageGetDOMStorageItemsResponse(response));
  }

/**  */
  dart_async.Future removeDOMStorageItem({StorageId storageId, String key}) {
    return _devtools.client.sendRequest('DOMStorage.removeDOMStorageItem',
        {"storageId": storageId, "key": key});
  }

/**  */
  dart_async.Future setDOMStorageItem(
      {StorageId storageId, String key, String value}) {
    return _devtools.client.sendRequest('DOMStorage.setDOMStorageItem',
        {"storageId": storageId, "key": key, "value": value});
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

/** Disables database tracking, prevents database events from being sent to the client. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('Database.disable', {});
  }

/** Enables database tracking, database events will now be delivered to the client. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('Database.enable', {});
  }

/**  */
  dart_async.Future<DatabaseExecuteSQLResponse> executeSQL(
      {String databaseId, String query}) {
    return _devtools.client.sendRequest('Database.executeSQL', {
      "databaseId": databaseId,
      "query": query
    }).then((response) => new DatabaseExecuteSQLResponse(response));
  }

/**  */
  dart_async.Future<DatabaseGetDatabaseTableNamesResponse>
      getDatabaseTableNames({String databaseId}) {
    return _devtools.client.sendRequest('Database.getDatabaseTableNames', {
      "databaseId": databaseId
    }).then((response) => new DatabaseGetDatabaseTableNamesResponse(response));
  }
}

class DevToolsDeviceOrientation {
  DevToolsDeviceOrientation(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Clears the overridden Device Orientation. */
  dart_async.Future clearDeviceOrientationOverride() {
    return _devtools.client
        .sendRequest('DeviceOrientation.clearDeviceOrientationOverride', {});
  }

/** Overrides the Device Orientation. */
  dart_async.Future setDeviceOrientationOverride(
      {num alpha, num beta, num gamma}) {
    return _devtools.client.sendRequest(
        'DeviceOrientation.setDeviceOrientationOverride',
        {"alpha": alpha, "beta": beta, "gamma": gamma});
  }
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

  Object virtualTimeBase;
}

class DevToolsEmulation {
  DevToolsEmulation(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Tells whether emulation is supported. */
  dart_async.Future<EmulationCanEmulateResponse> canEmulate() {
    return _devtools.client.sendRequest('Emulation.canEmulate', {}).then(
        (response) => new EmulationCanEmulateResponse(response));
  }

/** Clears the overriden device metrics. */
  dart_async.Future clearDeviceMetricsOverride() {
    return _devtools.client
        .sendRequest('Emulation.clearDeviceMetricsOverride', {});
  }

/** Clears the overriden Geolocation Position and Error. */
  dart_async.Future clearGeolocationOverride() {
    return _devtools.client
        .sendRequest('Emulation.clearGeolocationOverride', {});
  }

/** Requests that page scale factor is reset to initial values. */
  dart_async.Future resetPageScaleFactor() {
    return _devtools.client.sendRequest('Emulation.resetPageScaleFactor', {});
  }

/** Enables CPU throttling to emulate slow CPUs. */
  dart_async.Future setCPUThrottlingRate({num rate}) {
    return _devtools.client
        .sendRequest('Emulation.setCPUThrottlingRate', {"rate": rate});
  }

/** Sets or clears an override of the default background color of the frame. This override is used
if the content does not specify one. */
  dart_async.Future setDefaultBackgroundColorOverride({RGBA color}) {
    return _devtools.client.sendRequest(
        'Emulation.setDefaultBackgroundColorOverride', {"color": color});
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
    return _devtools.client.sendRequest('Emulation.setDeviceMetricsOverride', {
      "width": width,
      "height": height,
      "deviceScaleFactor": deviceScaleFactor,
      "mobile": mobile,
      "scale": scale,
      "screenWidth": screenWidth,
      "screenHeight": screenHeight,
      "positionX": positionX,
      "positionY": positionY,
      "dontSetVisibleSize": dontSetVisibleSize,
      "screenOrientation": screenOrientation,
      "viewport": viewport
    });
  }

/**  */
  dart_async.Future setEmitTouchEventsForMouse(
      {bool enabled, String configuration}) {
    return _devtools.client.sendRequest('Emulation.setEmitTouchEventsForMouse',
        {"enabled": enabled, "configuration": configuration});
  }

/** Emulates the given media for CSS media queries. */
  dart_async.Future setEmulatedMedia({String media}) {
    return _devtools.client
        .sendRequest('Emulation.setEmulatedMedia', {"media": media});
  }

/** Overrides the Geolocation Position or Error. Omitting any of the parameters emulates position
unavailable. */
  dart_async.Future setGeolocationOverride(
      {num latitude, num longitude, num accuracy}) {
    return _devtools.client.sendRequest('Emulation.setGeolocationOverride',
        {"latitude": latitude, "longitude": longitude, "accuracy": accuracy});
  }

/** Overrides value returned by the javascript navigator object. */
  dart_async.Future setNavigatorOverrides({String platform}) {
    return _devtools.client
        .sendRequest('Emulation.setNavigatorOverrides', {"platform": platform});
  }

/** Sets a specified page scale factor. */
  dart_async.Future setPageScaleFactor({num pageScaleFactor}) {
    return _devtools.client.sendRequest(
        'Emulation.setPageScaleFactor', {"pageScaleFactor": pageScaleFactor});
  }

/** Switches script execution in the page. */
  dart_async.Future setScriptExecutionDisabled({bool value}) {
    return _devtools.client
        .sendRequest('Emulation.setScriptExecutionDisabled', {"value": value});
  }

/** Enables touch on platforms which do not support them. */
  dart_async.Future setTouchEmulationEnabled(
      {bool enabled, int maxTouchPoints}) {
    return _devtools.client.sendRequest('Emulation.setTouchEmulationEnabled',
        {"enabled": enabled, "maxTouchPoints": maxTouchPoints});
  }

/** Turns on virtual time for all frames (replacing real-time with a synthetic time source) and sets
the current virtual time policy.  Note this supersedes any previous time budget. */
  dart_async.Future<EmulationSetVirtualTimePolicyResponse> setVirtualTimePolicy(
      {String policy,
      num budget,
      int maxVirtualTimeTaskStarvationCount,
      bool waitForNavigation}) {
    return _devtools.client.sendRequest('Emulation.setVirtualTimePolicy', {
      "policy": policy,
      "budget": budget,
      "maxVirtualTimeTaskStarvationCount": maxVirtualTimeTaskStarvationCount,
      "waitForNavigation": waitForNavigation
    }).then((response) => new EmulationSetVirtualTimePolicyResponse(response));
  }

/** Resizes the frame/viewport of the page. Note that this does not affect the frame's container
(e.g. browser window). Can be used to produce screenshots of the specified size. Not supported
on Android. */
  dart_async.Future setVisibleSize({int width, int height}) {
    return _devtools.client.sendRequest(
        'Emulation.setVisibleSize', {"width": width, "height": height});
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

/** Sends a BeginFrame to the target and returns when the frame was completed. Optionally captures a
screenshot from the resulting frame. Requires that the target was created with enabled
BeginFrameControl. */
  dart_async.Future<HeadlessExperimentalBeginFrameResponse> beginFrame(
      {Object frameTime,
      Object deadline,
      num interval,
      bool noDisplayUpdates,
      ScreenshotParams screenshot}) {
    return _devtools.client.sendRequest('HeadlessExperimental.beginFrame', {
      "frameTime": frameTime,
      "deadline": deadline,
      "interval": interval,
      "noDisplayUpdates": noDisplayUpdates,
      "screenshot": screenshot
    }).then((response) => new HeadlessExperimentalBeginFrameResponse(response));
  }

/** Disables headless events for the target. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('HeadlessExperimental.disable', {});
  }

/** Enables headless events for the target. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('HeadlessExperimental.enable', {});
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
    return _devtools.client.sendRequest('IO.close', {"handle": handle});
  }

/** Read a chunk of the stream */
  dart_async.Future<IOReadResponse> read(
      {String handle, int offset, int size}) {
    return _devtools.client.sendRequest('IO.read', {
      "handle": handle,
      "offset": offset,
      "size": size
    }).then((response) => new IOReadResponse(response));
  }

/** Return UUID of Blob object specified by a remote object id. */
  dart_async.Future<IOResolveBlobResponse> resolveBlob({Object objectId}) {
    return _devtools.client
        .sendRequest('IO.resolveBlob', {"objectId": objectId}).then(
            (response) => new IOResolveBlobResponse(response));
  }
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
    return _devtools.client.sendRequest('IndexedDB.clearObjectStore', {
      "securityOrigin": securityOrigin,
      "databaseName": databaseName,
      "objectStoreName": objectStoreName
    });
  }

/** Deletes a database. */
  dart_async.Future deleteDatabase(
      {String securityOrigin, String databaseName}) {
    return _devtools.client.sendRequest('IndexedDB.deleteDatabase',
        {"securityOrigin": securityOrigin, "databaseName": databaseName});
  }

/** Delete a range of entries from an object store */
  dart_async.Future deleteObjectStoreEntries(
      {String securityOrigin,
      String databaseName,
      String objectStoreName,
      KeyRange keyRange}) {
    return _devtools.client.sendRequest('IndexedDB.deleteObjectStoreEntries', {
      "securityOrigin": securityOrigin,
      "databaseName": databaseName,
      "objectStoreName": objectStoreName,
      "keyRange": keyRange
    });
  }

/** Disables events from backend. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('IndexedDB.disable', {});
  }

/** Enables events from backend. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('IndexedDB.enable', {});
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
    return _devtools.client.sendRequest('IndexedDB.requestData', {
      "securityOrigin": securityOrigin,
      "databaseName": databaseName,
      "objectStoreName": objectStoreName,
      "indexName": indexName,
      "skipCount": skipCount,
      "pageSize": pageSize,
      "keyRange": keyRange
    }).then((response) => new IndexedDBRequestDataResponse(response));
  }

/** Requests database with given name in given frame. */
  dart_async.Future<IndexedDBRequestDatabaseResponse> requestDatabase(
      {String securityOrigin, String databaseName}) {
    return _devtools.client.sendRequest('IndexedDB.requestDatabase', {
      "securityOrigin": securityOrigin,
      "databaseName": databaseName
    }).then((response) => new IndexedDBRequestDatabaseResponse(response));
  }

/** Requests database names for given security origin. */
  dart_async.Future<IndexedDBRequestDatabaseNamesResponse> requestDatabaseNames(
      {String securityOrigin}) {
    return _devtools.client.sendRequest('IndexedDB.requestDatabaseNames', {
      "securityOrigin": securityOrigin
    }).then((response) => new IndexedDBRequestDatabaseNamesResponse(response));
  }
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
    return _devtools.client.sendRequest('Input.dispatchKeyEvent', {
      "type": type,
      "modifiers": modifiers,
      "timestamp": timestamp,
      "text": text,
      "unmodifiedText": unmodifiedText,
      "keyIdentifier": keyIdentifier,
      "code": code,
      "key": key,
      "windowsVirtualKeyCode": windowsVirtualKeyCode,
      "nativeVirtualKeyCode": nativeVirtualKeyCode,
      "autoRepeat": autoRepeat,
      "isKeypad": isKeypad,
      "isSystemKey": isSystemKey,
      "location": location
    });
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
    return _devtools.client.sendRequest('Input.dispatchMouseEvent', {
      "type": type,
      "x": x,
      "y": y,
      "modifiers": modifiers,
      "timestamp": timestamp,
      "button": button,
      "clickCount": clickCount,
      "deltaX": deltaX,
      "deltaY": deltaY
    });
  }

/** Dispatches a touch event to the page. */
  dart_async.Future dispatchTouchEvent(
      {String type,
      List<TouchPoint> touchPoints,
      int modifiers,
      num timestamp}) {
    return _devtools.client.sendRequest('Input.dispatchTouchEvent', {
      "type": type,
      "touchPoints": touchPoints,
      "modifiers": modifiers,
      "timestamp": timestamp
    });
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
    return _devtools.client.sendRequest('Input.emulateTouchFromMouseEvent', {
      "type": type,
      "x": x,
      "y": y,
      "button": button,
      "timestamp": timestamp,
      "deltaX": deltaX,
      "deltaY": deltaY,
      "modifiers": modifiers,
      "clickCount": clickCount
    });
  }

/** Ignores input events (useful while auditing page). */
  dart_async.Future setIgnoreInputEvents({bool ignore}) {
    return _devtools.client
        .sendRequest('Input.setIgnoreInputEvents', {"ignore": ignore});
  }

/** Synthesizes a pinch gesture over a time period by issuing appropriate touch events. */
  dart_async.Future synthesizePinchGesture(
      {num x,
      num y,
      num scaleFactor,
      int relativeSpeed,
      String gestureSourceType}) {
    return _devtools.client.sendRequest('Input.synthesizePinchGesture', {
      "x": x,
      "y": y,
      "scaleFactor": scaleFactor,
      "relativeSpeed": relativeSpeed,
      "gestureSourceType": gestureSourceType
    });
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
    return _devtools.client.sendRequest('Input.synthesizeScrollGesture', {
      "x": x,
      "y": y,
      "xDistance": xDistance,
      "yDistance": yDistance,
      "xOverscroll": xOverscroll,
      "yOverscroll": yOverscroll,
      "preventFling": preventFling,
      "speed": speed,
      "gestureSourceType": gestureSourceType,
      "repeatCount": repeatCount,
      "repeatDelayMs": repeatDelayMs,
      "interactionMarkerName": interactionMarkerName
    });
  }

/** Synthesizes a tap gesture over a time period by issuing appropriate touch events. */
  dart_async.Future synthesizeTapGesture(
      {num x, num y, int duration, int tapCount, String gestureSourceType}) {
    return _devtools.client.sendRequest('Input.synthesizeTapGesture', {
      "x": x,
      "y": y,
      "duration": duration,
      "tapCount": tapCount,
      "gestureSourceType": gestureSourceType
    });
  }
}

class DevToolsInspector {
  DevToolsInspector(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Disables inspector domain notifications. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('Inspector.disable', {});
  }

/** Enables inspector domain notifications. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('Inspector.enable', {});
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

/** Provides the reasons why the given layer was composited. */
  dart_async.Future<LayerTreeCompositingReasonsResponse> compositingReasons(
      {String layerId}) {
    return _devtools.client
        .sendRequest('LayerTree.compositingReasons', {"layerId": layerId}).then(
            (response) => new LayerTreeCompositingReasonsResponse(response));
  }

/** Disables compositing tree inspection. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('LayerTree.disable', {});
  }

/** Enables compositing tree inspection. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('LayerTree.enable', {});
  }

/** Returns the snapshot identifier. */
  dart_async.Future<LayerTreeLoadSnapshotResponse> loadSnapshot(
      {List<PictureTile> tiles}) {
    return _devtools.client
        .sendRequest('LayerTree.loadSnapshot', {"tiles": tiles}).then(
            (response) => new LayerTreeLoadSnapshotResponse(response));
  }

/** Returns the layer snapshot identifier. */
  dart_async.Future<LayerTreeMakeSnapshotResponse> makeSnapshot(
      {String layerId}) {
    return _devtools.client
        .sendRequest('LayerTree.makeSnapshot', {"layerId": layerId}).then(
            (response) => new LayerTreeMakeSnapshotResponse(response));
  }

/**  */
  dart_async.Future<LayerTreeProfileSnapshotResponse> profileSnapshot(
      {String snapshotId, int minRepeatCount, num minDuration, Rect clipRect}) {
    return _devtools.client.sendRequest('LayerTree.profileSnapshot', {
      "snapshotId": snapshotId,
      "minRepeatCount": minRepeatCount,
      "minDuration": minDuration,
      "clipRect": clipRect
    }).then((response) => new LayerTreeProfileSnapshotResponse(response));
  }

/** Releases layer snapshot captured by the back-end. */
  dart_async.Future releaseSnapshot({String snapshotId}) {
    return _devtools.client
        .sendRequest('LayerTree.releaseSnapshot', {"snapshotId": snapshotId});
  }

/** Replays the layer snapshot and returns the resulting bitmap. */
  dart_async.Future<LayerTreeReplaySnapshotResponse> replaySnapshot(
      {String snapshotId, int fromStep, int toStep, num scale}) {
    return _devtools.client.sendRequest('LayerTree.replaySnapshot', {
      "snapshotId": snapshotId,
      "fromStep": fromStep,
      "toStep": toStep,
      "scale": scale
    }).then((response) => new LayerTreeReplaySnapshotResponse(response));
  }

/** Replays the layer snapshot and returns canvas log. */
  dart_async.Future<LayerTreeSnapshotCommandLogResponse> snapshotCommandLog(
      {String snapshotId}) {
    return _devtools.client.sendRequest('LayerTree.snapshotCommandLog', {
      "snapshotId": snapshotId
    }).then((response) => new LayerTreeSnapshotCommandLogResponse(response));
  }
}

class DevToolsLog {
  DevToolsLog(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Clears the log. */
  dart_async.Future clear() {
    return _devtools.client.sendRequest('Log.clear', {});
  }

/** Disables log domain, prevents further log entries from being reported to the client. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('Log.disable', {});
  }

/** Enables log domain, sends the entries collected so far to the client by means of the
`entryAdded` notification. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('Log.enable', {});
  }

/** start violation reporting. */
  dart_async.Future startViolationsReport({List<ViolationSetting> config}) {
    return _devtools.client
        .sendRequest('Log.startViolationsReport', {"config": config});
  }

/** Stop violation reporting. */
  dart_async.Future stopViolationsReport() {
    return _devtools.client.sendRequest('Log.stopViolationsReport', {});
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
    return _devtools.client.sendRequest('Memory.getDOMCounters', {}).then(
        (response) => new MemoryGetDOMCountersResponse(response));
  }

/**  */
  dart_async.Future prepareForLeakDetection() {
    return _devtools.client.sendRequest('Memory.prepareForLeakDetection', {});
  }

/** Enable/disable suppressing memory pressure notifications in all processes. */
  dart_async.Future setPressureNotificationsSuppressed({bool suppressed}) {
    return _devtools.client.sendRequest(
        'Memory.setPressureNotificationsSuppressed',
        {"suppressed": suppressed});
  }

/** Simulate a memory pressure notification in all processes. */
  dart_async.Future simulatePressureNotification({String level}) {
    return _devtools.client
        .sendRequest('Memory.simulatePressureNotification', {"level": level});
  }

/** Start collecting native memory profile. */
  dart_async.Future startSampling(
      {int samplingInterval, bool suppressRandomness}) {
    return _devtools.client.sendRequest('Memory.startSampling', {
      "samplingInterval": samplingInterval,
      "suppressRandomness": suppressRandomness
    });
  }

/** Stop collecting native memory profile. */
  dart_async.Future stopSampling() {
    return _devtools.client.sendRequest('Memory.stopSampling', {});
  }

/** Retrieve native memory allocations profile collected since process startup. */
  dart_async.Future<MemoryGetAllTimeSamplingProfileResponse>
      getAllTimeSamplingProfile() {
    return _devtools.client
        .sendRequest('Memory.getAllTimeSamplingProfile', {}).then((response) =>
            new MemoryGetAllTimeSamplingProfileResponse(response));
  }

/** Retrieve native memory allocations profile collected since last
`startSampling` call. */
  dart_async.Future<MemoryGetSamplingProfileResponse> getSamplingProfile() {
    return _devtools.client.sendRequest('Memory.getSamplingProfile', {}).then(
        (response) => new MemoryGetSamplingProfileResponse(response));
  }
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

  List<Object> result;
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

/** Tells whether clearing browser cache is supported. */
  dart_async.Future<NetworkCanClearBrowserCacheResponse>
      canClearBrowserCache() {
    return _devtools.client
        .sendRequest('Network.canClearBrowserCache', {}).then(
            (response) => new NetworkCanClearBrowserCacheResponse(response));
  }

/** Tells whether clearing browser cookies is supported. */
  dart_async.Future<NetworkCanClearBrowserCookiesResponse>
      canClearBrowserCookies() {
    return _devtools.client
        .sendRequest('Network.canClearBrowserCookies', {}).then(
            (response) => new NetworkCanClearBrowserCookiesResponse(response));
  }

/** Tells whether emulation of network conditions is supported. */
  dart_async.Future<NetworkCanEmulateNetworkConditionsResponse>
      canEmulateNetworkConditions() {
    return _devtools.client
        .sendRequest('Network.canEmulateNetworkConditions', {}).then(
            (response) =>
                new NetworkCanEmulateNetworkConditionsResponse(response));
  }

/** Clears browser cache. */
  dart_async.Future clearBrowserCache() {
    return _devtools.client.sendRequest('Network.clearBrowserCache', {});
  }

/** Clears browser cookies. */
  dart_async.Future clearBrowserCookies() {
    return _devtools.client.sendRequest('Network.clearBrowserCookies', {});
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
    return _devtools.client.sendRequest('Network.continueInterceptedRequest', {
      "interceptionId": interceptionId,
      "errorReason": errorReason,
      "rawResponse": rawResponse,
      "url": url,
      "method": method,
      "postData": postData,
      "headers": headers,
      "authChallengeResponse": authChallengeResponse
    });
  }

/** Deletes browser cookies with matching name and url or domain/path pair. */
  dart_async.Future deleteCookies(
      {String name, String url, String domain, String path}) {
    return _devtools.client.sendRequest('Network.deleteCookies',
        {"name": name, "url": url, "domain": domain, "path": path});
  }

/** Disables network tracking, prevents network events from being sent to the client. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('Network.disable', {});
  }

/** Activates emulation of network conditions. */
  dart_async.Future emulateNetworkConditions(
      {bool offline,
      num latency,
      num downloadThroughput,
      num uploadThroughput,
      String connectionType}) {
    return _devtools.client.sendRequest('Network.emulateNetworkConditions', {
      "offline": offline,
      "latency": latency,
      "downloadThroughput": downloadThroughput,
      "uploadThroughput": uploadThroughput,
      "connectionType": connectionType
    });
  }

/** Enables network tracking, network events will now be delivered to the client. */
  dart_async.Future enable(
      {int maxTotalBufferSize,
      int maxResourceBufferSize,
      int maxPostDataSize}) {
    return _devtools.client.sendRequest('Network.enable', {
      "maxTotalBufferSize": maxTotalBufferSize,
      "maxResourceBufferSize": maxResourceBufferSize,
      "maxPostDataSize": maxPostDataSize
    });
  }

/** Returns all browser cookies. Depending on the backend support, will return detailed cookie
information in the `cookies` field. */
  dart_async.Future<NetworkGetAllCookiesResponse> getAllCookies() {
    return _devtools.client.sendRequest('Network.getAllCookies', {}).then(
        (response) => new NetworkGetAllCookiesResponse(response));
  }

/** Returns the DER-encoded certificate. */
  dart_async.Future<NetworkGetCertificateResponse> getCertificate(
      {String origin}) {
    return _devtools.client
        .sendRequest('Network.getCertificate', {"origin": origin}).then(
            (response) => new NetworkGetCertificateResponse(response));
  }

/** Returns all browser cookies for the current URL. Depending on the backend support, will return
detailed cookie information in the `cookies` field. */
  dart_async.Future<NetworkGetCookiesResponse> getCookies({List urls}) {
    return _devtools.client
        .sendRequest('Network.getCookies', {"urls": urls}).then(
            (response) => new NetworkGetCookiesResponse(response));
  }

/** Returns content served for the given request. */
  dart_async.Future<NetworkGetResponseBodyResponse> getResponseBody(
      {String requestId}) {
    return _devtools.client
        .sendRequest('Network.getResponseBody', {"requestId": requestId}).then(
            (response) => new NetworkGetResponseBodyResponse(response));
  }

/** Returns post data sent with the request. Returns an error when no data was sent with the request. */
  dart_async.Future<NetworkGetRequestPostDataResponse> getRequestPostData(
      {String requestId}) {
    return _devtools.client.sendRequest('Network.getRequestPostData', {
      "requestId": requestId
    }).then((response) => new NetworkGetRequestPostDataResponse(response));
  }

/** Returns content served for the given currently intercepted request. */
  dart_async.Future<NetworkGetResponseBodyForInterceptionResponse>
      getResponseBodyForInterception({String interceptionId}) {
    return _devtools.client.sendRequest(
        'Network.getResponseBodyForInterception', {
      "interceptionId": interceptionId
    }).then((response) =>
        new NetworkGetResponseBodyForInterceptionResponse(response));
  }

/** This method sends a new XMLHttpRequest which is identical to the original one. The following
parameters should be identical: method, url, async, request body, extra headers, withCredentials
attribute, user, password. */
  dart_async.Future replayXHR({String requestId}) {
    return _devtools.client
        .sendRequest('Network.replayXHR', {"requestId": requestId});
  }

/** Searches for given string in response content. */
  dart_async.Future<NetworkSearchInResponseBodyResponse> searchInResponseBody(
      {String requestId, String query, bool caseSensitive, bool isRegex}) {
    return _devtools.client.sendRequest('Network.searchInResponseBody', {
      "requestId": requestId,
      "query": query,
      "caseSensitive": caseSensitive,
      "isRegex": isRegex
    }).then((response) => new NetworkSearchInResponseBodyResponse(response));
  }

/** Blocks URLs from loading. */
  dart_async.Future setBlockedURLs({List urls}) {
    return _devtools.client
        .sendRequest('Network.setBlockedURLs', {"urls": urls});
  }

/** Toggles ignoring of service worker for each request. */
  dart_async.Future setBypassServiceWorker({bool bypass}) {
    return _devtools.client
        .sendRequest('Network.setBypassServiceWorker', {"bypass": bypass});
  }

/** Toggles ignoring cache for each request. If `true`, cache will not be used. */
  dart_async.Future setCacheDisabled({bool cacheDisabled}) {
    return _devtools.client.sendRequest(
        'Network.setCacheDisabled', {"cacheDisabled": cacheDisabled});
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
    return _devtools.client.sendRequest('Network.setCookie', {
      "name": name,
      "value": value,
      "url": url,
      "domain": domain,
      "path": path,
      "secure": secure,
      "httpOnly": httpOnly,
      "sameSite": sameSite,
      "expires": expires
    }).then((response) => new NetworkSetCookieResponse(response));
  }

/** Sets given cookies. */
  dart_async.Future setCookies({List<CookieParam> cookies}) {
    return _devtools.client
        .sendRequest('Network.setCookies', {"cookies": cookies});
  }

/** For testing. */
  dart_async.Future setDataSizeLimitsForTest(
      {int maxTotalSize, int maxResourceSize}) {
    return _devtools.client.sendRequest('Network.setDataSizeLimitsForTest',
        {"maxTotalSize": maxTotalSize, "maxResourceSize": maxResourceSize});
  }

/** Specifies whether to always send extra HTTP headers with the requests from this page. */
  dart_async.Future setExtraHTTPHeaders({Headers headers}) {
    return _devtools.client
        .sendRequest('Network.setExtraHTTPHeaders', {"headers": headers});
  }

/** Sets the requests to intercept that match a the provided patterns and optionally resource types. */
  dart_async.Future setRequestInterception({List<RequestPattern> patterns}) {
    return _devtools.client
        .sendRequest('Network.setRequestInterception', {"patterns": patterns});
  }

/** Allows overriding user agent with the given string. */
  dart_async.Future setUserAgentOverride({String userAgent}) {
    return _devtools.client
        .sendRequest('Network.setUserAgentOverride', {"userAgent": userAgent});
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

/** Disables domain notifications. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('Overlay.disable', {});
  }

/** Enables domain notifications. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('Overlay.enable', {});
  }

/** For testing. */
  dart_async.Future<OverlayGetHighlightObjectForTestResponse>
      getHighlightObjectForTest({int nodeId}) {
    return _devtools.client.sendRequest('Overlay.getHighlightObjectForTest', {
      "nodeId": nodeId
    }).then(
        (response) => new OverlayGetHighlightObjectForTestResponse(response));
  }

/** Hides any highlight. */
  dart_async.Future hideHighlight() {
    return _devtools.client.sendRequest('Overlay.hideHighlight', {});
  }

/** Highlights owner element of the frame with given id. */
  dart_async.Future highlightFrame(
      {String frameId, RGBA contentColor, RGBA contentOutlineColor}) {
    return _devtools.client.sendRequest('Overlay.highlightFrame', {
      "frameId": frameId,
      "contentColor": contentColor,
      "contentOutlineColor": contentOutlineColor
    });
  }

/** Highlights DOM node with given id or with the given JavaScript object wrapper. Either nodeId or
objectId must be specified. */
  dart_async.Future highlightNode(
      {HighlightConfig highlightConfig,
      int nodeId,
      int backendNodeId,
      Object objectId}) {
    return _devtools.client.sendRequest('Overlay.highlightNode', {
      "highlightConfig": highlightConfig,
      "nodeId": nodeId,
      "backendNodeId": backendNodeId,
      "objectId": objectId
    });
  }

/** Highlights given quad. Coordinates are absolute with respect to the main frame viewport. */
  dart_async.Future highlightQuad({List quad, RGBA color, RGBA outlineColor}) {
    return _devtools.client.sendRequest('Overlay.highlightQuad',
        {"quad": quad, "color": color, "outlineColor": outlineColor});
  }

/** Highlights given rectangle. Coordinates are absolute with respect to the main frame viewport. */
  dart_async.Future highlightRect(
      {int x, int y, int width, int height, RGBA color, RGBA outlineColor}) {
    return _devtools.client.sendRequest('Overlay.highlightRect', {
      "x": x,
      "y": y,
      "width": width,
      "height": height,
      "color": color,
      "outlineColor": outlineColor
    });
  }

/** Enters the 'inspect' mode. In this mode, elements that user is hovering over are highlighted.
Backend then generates 'inspectNodeRequested' event upon element selection. */
  dart_async.Future setInspectMode(
      {String mode, HighlightConfig highlightConfig}) {
    return _devtools.client.sendRequest('Overlay.setInspectMode',
        {"mode": mode, "highlightConfig": highlightConfig});
  }

/**  */
  dart_async.Future setPausedInDebuggerMessage({String message}) {
    return _devtools.client.sendRequest(
        'Overlay.setPausedInDebuggerMessage', {"message": message});
  }

/** Requests that backend shows debug borders on layers */
  dart_async.Future setShowDebugBorders({bool show}) {
    return _devtools.client
        .sendRequest('Overlay.setShowDebugBorders', {"show": show});
  }

/** Requests that backend shows the FPS counter */
  dart_async.Future setShowFPSCounter({bool show}) {
    return _devtools.client
        .sendRequest('Overlay.setShowFPSCounter', {"show": show});
  }

/** Requests that backend shows paint rectangles */
  dart_async.Future setShowPaintRects({bool result}) {
    return _devtools.client
        .sendRequest('Overlay.setShowPaintRects', {"result": result});
  }

/** Requests that backend shows scroll bottleneck rects */
  dart_async.Future setShowScrollBottleneckRects({bool show}) {
    return _devtools.client
        .sendRequest('Overlay.setShowScrollBottleneckRects', {"show": show});
  }

/** Paints viewport size upon main frame resize. */
  dart_async.Future setShowViewportSizeOnResize({bool show}) {
    return _devtools.client
        .sendRequest('Overlay.setShowViewportSizeOnResize', {"show": show});
  }

/**  */
  dart_async.Future setSuspended({bool suspended}) {
    return _devtools.client
        .sendRequest('Overlay.setSuspended', {"suspended": suspended});
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

  Object executionContextId;
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

  List<Object> result;
}

class DevToolsPage {
  DevToolsPage(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Deprecated, please use addScriptToEvaluateOnNewDocument instead. */
  dart_async.Future<PageAddScriptToEvaluateOnLoadResponse>
      addScriptToEvaluateOnLoad({String scriptSource}) {
    return _devtools.client.sendRequest('Page.addScriptToEvaluateOnLoad', {
      "scriptSource": scriptSource
    }).then((response) => new PageAddScriptToEvaluateOnLoadResponse(response));
  }

/** Evaluates given script in every frame upon creation (before loading frame's scripts). */
  dart_async.Future<PageAddScriptToEvaluateOnNewDocumentResponse>
      addScriptToEvaluateOnNewDocument({String source}) {
    return _devtools.client.sendRequest(
        'Page.addScriptToEvaluateOnNewDocument', {
      "source": source
    }).then((response) =>
        new PageAddScriptToEvaluateOnNewDocumentResponse(response));
  }

/** Brings page to front (activates tab). */
  dart_async.Future bringToFront() {
    return _devtools.client.sendRequest('Page.bringToFront', {});
  }

/** Capture page screenshot. */
  dart_async.Future<PageCaptureScreenshotResponse> captureScreenshot(
      {String format, int quality, Viewport clip, bool fromSurface}) {
    return _devtools.client.sendRequest('Page.captureScreenshot', {
      "format": format,
      "quality": quality,
      "clip": clip,
      "fromSurface": fromSurface
    }).then((response) => new PageCaptureScreenshotResponse(response));
  }

/** Clears the overriden device metrics. */
  dart_async.Future clearDeviceMetricsOverride() {
    return _devtools.client.sendRequest('Page.clearDeviceMetricsOverride', {});
  }

/** Clears the overridden Device Orientation. */
  dart_async.Future clearDeviceOrientationOverride() {
    return _devtools.client
        .sendRequest('Page.clearDeviceOrientationOverride', {});
  }

/** Clears the overriden Geolocation Position and Error. */
  dart_async.Future clearGeolocationOverride() {
    return _devtools.client.sendRequest('Page.clearGeolocationOverride', {});
  }

/** Creates an isolated world for the given frame. */
  dart_async.Future<PageCreateIsolatedWorldResponse> createIsolatedWorld(
      {String frameId, String worldName, bool grantUniveralAccess}) {
    return _devtools.client.sendRequest('Page.createIsolatedWorld', {
      "frameId": frameId,
      "worldName": worldName,
      "grantUniveralAccess": grantUniveralAccess
    }).then((response) => new PageCreateIsolatedWorldResponse(response));
  }

/** Deletes browser cookie with given name, domain and path. */
  dart_async.Future deleteCookie({String cookieName, String url}) {
    return _devtools.client.sendRequest(
        'Page.deleteCookie', {"cookieName": cookieName, "url": url});
  }

/** Disables page domain notifications. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('Page.disable', {});
  }

/** Enables page domain notifications. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('Page.enable', {});
  }

/**  */
  dart_async.Future<PageGetAppManifestResponse> getAppManifest() {
    return _devtools.client.sendRequest('Page.getAppManifest', {}).then(
        (response) => new PageGetAppManifestResponse(response));
  }

/** Returns all browser cookies. Depending on the backend support, will return detailed cookie
information in the `cookies` field. */
  dart_async.Future<PageGetCookiesResponse> getCookies() {
    return _devtools.client.sendRequest('Page.getCookies', {}).then(
        (response) => new PageGetCookiesResponse(response));
  }

/** Returns present frame tree structure. */
  dart_async.Future<PageGetFrameTreeResponse> getFrameTree() {
    return _devtools.client.sendRequest('Page.getFrameTree', {}).then(
        (response) => new PageGetFrameTreeResponse(response));
  }

/** Returns metrics relating to the layouting of the page, such as viewport bounds/scale. */
  dart_async.Future<PageGetLayoutMetricsResponse> getLayoutMetrics() {
    return _devtools.client.sendRequest('Page.getLayoutMetrics', {}).then(
        (response) => new PageGetLayoutMetricsResponse(response));
  }

/** Returns navigation history for the current page. */
  dart_async.Future<PageGetNavigationHistoryResponse> getNavigationHistory() {
    return _devtools.client.sendRequest('Page.getNavigationHistory', {}).then(
        (response) => new PageGetNavigationHistoryResponse(response));
  }

/** Returns content of the given resource. */
  dart_async.Future<PageGetResourceContentResponse> getResourceContent(
      {String frameId, String url}) {
    return _devtools.client.sendRequest('Page.getResourceContent', {
      "frameId": frameId,
      "url": url
    }).then((response) => new PageGetResourceContentResponse(response));
  }

/** Returns present frame / resource tree structure. */
  dart_async.Future<PageGetResourceTreeResponse> getResourceTree() {
    return _devtools.client.sendRequest('Page.getResourceTree', {}).then(
        (response) => new PageGetResourceTreeResponse(response));
  }

/** Accepts or dismisses a JavaScript initiated dialog (alert, confirm, prompt, or onbeforeunload). */
  dart_async.Future handleJavaScriptDialog({bool accept, String promptText}) {
    return _devtools.client.sendRequest('Page.handleJavaScriptDialog',
        {"accept": accept, "promptText": promptText});
  }

/** Navigates current page to the given URL. */
  dart_async.Future<PageNavigateResponse> navigate(
      {String url, String referrer, String transitionType, String frameId}) {
    return _devtools.client.sendRequest('Page.navigate', {
      "url": url,
      "referrer": referrer,
      "transitionType": transitionType,
      "frameId": frameId
    }).then((response) => new PageNavigateResponse(response));
  }

/** Navigates current page to the given history entry. */
  dart_async.Future navigateToHistoryEntry({int entryId}) {
    return _devtools.client
        .sendRequest('Page.navigateToHistoryEntry', {"entryId": entryId});
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
    return _devtools.client.sendRequest('Page.printToPDF', {
      "landscape": landscape,
      "displayHeaderFooter": displayHeaderFooter,
      "printBackground": printBackground,
      "scale": scale,
      "paperWidth": paperWidth,
      "paperHeight": paperHeight,
      "marginTop": marginTop,
      "marginBottom": marginBottom,
      "marginLeft": marginLeft,
      "marginRight": marginRight,
      "pageRanges": pageRanges,
      "ignoreInvalidPageRanges": ignoreInvalidPageRanges,
      "headerTemplate": headerTemplate,
      "footerTemplate": footerTemplate,
      "preferCSSPageSize": preferCSSPageSize
    }).then((response) => new PagePrintToPDFResponse(response));
  }

/** Reloads given page optionally ignoring the cache. */
  dart_async.Future reload({bool ignoreCache, String scriptToEvaluateOnLoad}) {
    return _devtools.client.sendRequest('Page.reload', {
      "ignoreCache": ignoreCache,
      "scriptToEvaluateOnLoad": scriptToEvaluateOnLoad
    });
  }

/** Deprecated, please use removeScriptToEvaluateOnNewDocument instead. */
  dart_async.Future removeScriptToEvaluateOnLoad({String identifier}) {
    return _devtools.client.sendRequest(
        'Page.removeScriptToEvaluateOnLoad', {"identifier": identifier});
  }

/** Removes given script from the list. */
  dart_async.Future removeScriptToEvaluateOnNewDocument({String identifier}) {
    return _devtools.client.sendRequest(
        'Page.removeScriptToEvaluateOnNewDocument', {"identifier": identifier});
  }

/**  */
  dart_async.Future requestAppBanner() {
    return _devtools.client.sendRequest('Page.requestAppBanner', {});
  }

/** Acknowledges that a screencast frame has been received by the frontend. */
  dart_async.Future screencastFrameAck({int sessionId}) {
    return _devtools.client
        .sendRequest('Page.screencastFrameAck', {"sessionId": sessionId});
  }

/** Searches for given string in resource content. */
  dart_async.Future<PageSearchInResourceResponse> searchInResource(
      {String frameId,
      String url,
      String query,
      bool caseSensitive,
      bool isRegex}) {
    return _devtools.client.sendRequest('Page.searchInResource', {
      "frameId": frameId,
      "url": url,
      "query": query,
      "caseSensitive": caseSensitive,
      "isRegex": isRegex
    }).then((response) => new PageSearchInResourceResponse(response));
  }

/** Enable Chrome's experimental ad filter on all sites. */
  dart_async.Future setAdBlockingEnabled({bool enabled}) {
    return _devtools.client
        .sendRequest('Page.setAdBlockingEnabled', {"enabled": enabled});
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
    return _devtools.client.sendRequest('Page.setDeviceMetricsOverride', {
      "width": width,
      "height": height,
      "deviceScaleFactor": deviceScaleFactor,
      "mobile": mobile,
      "scale": scale,
      "screenWidth": screenWidth,
      "screenHeight": screenHeight,
      "positionX": positionX,
      "positionY": positionY,
      "dontSetVisibleSize": dontSetVisibleSize,
      "screenOrientation": screenOrientation,
      "viewport": viewport
    });
  }

/** Overrides the Device Orientation. */
  dart_async.Future setDeviceOrientationOverride(
      {num alpha, num beta, num gamma}) {
    return _devtools.client.sendRequest('Page.setDeviceOrientationOverride',
        {"alpha": alpha, "beta": beta, "gamma": gamma});
  }

/** Sets given markup as the document's HTML. */
  dart_async.Future setDocumentContent({String frameId, String html}) {
    return _devtools.client.sendRequest(
        'Page.setDocumentContent', {"frameId": frameId, "html": html});
  }

/** Set the behavior when downloading a file. */
  dart_async.Future setDownloadBehavior(
      {String behavior, String downloadPath}) {
    return _devtools.client.sendRequest('Page.setDownloadBehavior',
        {"behavior": behavior, "downloadPath": downloadPath});
  }

/** Overrides the Geolocation Position or Error. Omitting any of the parameters emulates position
unavailable. */
  dart_async.Future setGeolocationOverride(
      {num latitude, num longitude, num accuracy}) {
    return _devtools.client.sendRequest('Page.setGeolocationOverride',
        {"latitude": latitude, "longitude": longitude, "accuracy": accuracy});
  }

/** Controls whether page will emit lifecycle events. */
  dart_async.Future setLifecycleEventsEnabled({bool enabled}) {
    return _devtools.client
        .sendRequest('Page.setLifecycleEventsEnabled', {"enabled": enabled});
  }

/** Toggles mouse event-based touch event emulation. */
  dart_async.Future setTouchEmulationEnabled(
      {bool enabled, String configuration}) {
    return _devtools.client.sendRequest('Page.setTouchEmulationEnabled',
        {"enabled": enabled, "configuration": configuration});
  }

/** Starts sending each frame using the `screencastFrame` event. */
  dart_async.Future startScreencast(
      {String format,
      int quality,
      int maxWidth,
      int maxHeight,
      int everyNthFrame}) {
    return _devtools.client.sendRequest('Page.startScreencast', {
      "format": format,
      "quality": quality,
      "maxWidth": maxWidth,
      "maxHeight": maxHeight,
      "everyNthFrame": everyNthFrame
    });
  }

/** Force the page stop all navigations and pending resource fetches. */
  dart_async.Future stopLoading() {
    return _devtools.client.sendRequest('Page.stopLoading', {});
  }

/** Crashes renderer on the IO thread, generates minidumps. */
  dart_async.Future crash() {
    return _devtools.client.sendRequest('Page.crash', {});
  }

/** Stops sending each frame in the `screencastFrame`. */
  dart_async.Future stopScreencast() {
    return _devtools.client.sendRequest('Page.stopScreencast', {});
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

/** Disable collecting and reporting metrics. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('Performance.disable', {});
  }

/** Enable collecting and reporting metrics. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('Performance.enable', {});
  }

/** Retrieve current values of run-time metrics. */
  dart_async.Future<PerformanceGetMetricsResponse> getMetrics() {
    return _devtools.client.sendRequest('Performance.getMetrics', {}).then(
        (response) => new PerformanceGetMetricsResponse(response));
  }
}

class DevToolsSecurity {
  DevToolsSecurity(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Disables tracking security state changes. */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('Security.disable', {});
  }

/** Enables tracking security state changes. */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('Security.enable', {});
  }

/** Enable/disable whether all certificate errors should be ignored. */
  dart_async.Future setIgnoreCertificateErrors({bool ignore}) {
    return _devtools.client
        .sendRequest('Security.setIgnoreCertificateErrors', {"ignore": ignore});
  }

/** Handles a certificate error that fired a certificateError event. */
  dart_async.Future handleCertificateError({int eventId, String action}) {
    return _devtools.client.sendRequest('Security.handleCertificateError',
        {"eventId": eventId, "action": action});
  }

/** Enable/disable overriding certificate errors. If enabled, all certificate error events need to
be handled by the DevTools client and should be answered with handleCertificateError commands. */
  dart_async.Future setOverrideCertificateErrors({bool override}) {
    return _devtools.client.sendRequest(
        'Security.setOverrideCertificateErrors', {"override": override});
  }
}

class DevToolsServiceWorker {
  DevToolsServiceWorker(this._devtools);

  final ChromeDevToolsBase _devtools;

/**  */
  dart_async.Future deliverPushMessage(
      {String origin, String registrationId, String data}) {
    return _devtools.client.sendRequest('ServiceWorker.deliverPushMessage',
        {"origin": origin, "registrationId": registrationId, "data": data});
  }

/**  */
  dart_async.Future disable() {
    return _devtools.client.sendRequest('ServiceWorker.disable', {});
  }

/**  */
  dart_async.Future dispatchSyncEvent(
      {String origin, String registrationId, String tag, bool lastChance}) {
    return _devtools.client.sendRequest('ServiceWorker.dispatchSyncEvent', {
      "origin": origin,
      "registrationId": registrationId,
      "tag": tag,
      "lastChance": lastChance
    });
  }

/**  */
  dart_async.Future enable() {
    return _devtools.client.sendRequest('ServiceWorker.enable', {});
  }

/**  */
  dart_async.Future inspectWorker({String versionId}) {
    return _devtools.client
        .sendRequest('ServiceWorker.inspectWorker', {"versionId": versionId});
  }

/**  */
  dart_async.Future setForceUpdateOnPageLoad({bool forceUpdateOnPageLoad}) {
    return _devtools.client.sendRequest(
        'ServiceWorker.setForceUpdateOnPageLoad',
        {"forceUpdateOnPageLoad": forceUpdateOnPageLoad});
  }

/**  */
  dart_async.Future skipWaiting({String scopeURL}) {
    return _devtools.client
        .sendRequest('ServiceWorker.skipWaiting', {"scopeURL": scopeURL});
  }

/**  */
  dart_async.Future startWorker({String scopeURL}) {
    return _devtools.client
        .sendRequest('ServiceWorker.startWorker', {"scopeURL": scopeURL});
  }

/**  */
  dart_async.Future stopAllWorkers() {
    return _devtools.client.sendRequest('ServiceWorker.stopAllWorkers', {});
  }

/**  */
  dart_async.Future stopWorker({String versionId}) {
    return _devtools.client
        .sendRequest('ServiceWorker.stopWorker', {"versionId": versionId});
  }

/**  */
  dart_async.Future unregister({String scopeURL}) {
    return _devtools.client
        .sendRequest('ServiceWorker.unregister', {"scopeURL": scopeURL});
  }

/**  */
  dart_async.Future updateRegistration({String scopeURL}) {
    return _devtools.client.sendRequest(
        'ServiceWorker.updateRegistration', {"scopeURL": scopeURL});
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

/** Clears storage for origin. */
  dart_async.Future clearDataForOrigin({String origin, String storageTypes}) {
    return _devtools.client.sendRequest('Storage.clearDataForOrigin',
        {"origin": origin, "storageTypes": storageTypes});
  }

/** Returns usage and quota in bytes. */
  dart_async.Future<StorageGetUsageAndQuotaResponse> getUsageAndQuota(
      {String origin}) {
    return _devtools.client
        .sendRequest('Storage.getUsageAndQuota', {"origin": origin}).then(
            (response) => new StorageGetUsageAndQuotaResponse(response));
  }

/** Registers origin to be notified when an update occurs to its cache storage list. */
  dart_async.Future trackCacheStorageForOrigin({String origin}) {
    return _devtools.client
        .sendRequest('Storage.trackCacheStorageForOrigin', {"origin": origin});
  }

/** Registers origin to be notified when an update occurs to its IndexedDB. */
  dart_async.Future trackIndexedDBForOrigin({String origin}) {
    return _devtools.client
        .sendRequest('Storage.trackIndexedDBForOrigin', {"origin": origin});
  }

/** Unregisters origin from receiving notifications for cache storage. */
  dart_async.Future untrackCacheStorageForOrigin({String origin}) {
    return _devtools.client.sendRequest(
        'Storage.untrackCacheStorageForOrigin', {"origin": origin});
  }

/** Unregisters origin from receiving notifications for IndexedDB. */
  dart_async.Future untrackIndexedDBForOrigin({String origin}) {
    return _devtools.client
        .sendRequest('Storage.untrackIndexedDBForOrigin', {"origin": origin});
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
    return _devtools.client.sendRequest('SystemInfo.getInfo', {}).then(
        (response) => new SystemInfoGetInfoResponse(response));
  }
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

/** Activates (focuses) the target. */
  dart_async.Future activateTarget({String targetId}) {
    return _devtools.client
        .sendRequest('Target.activateTarget', {"targetId": targetId});
  }

/** Attaches to the target with given id. */
  dart_async.Future<TargetAttachToTargetResponse> attachToTarget(
      {String targetId}) {
    return _devtools.client
        .sendRequest('Target.attachToTarget', {"targetId": targetId}).then(
            (response) => new TargetAttachToTargetResponse(response));
  }

/** Closes the target. If the target is a page that gets closed too. */
  dart_async.Future<TargetCloseTargetResponse> closeTarget({String targetId}) {
    return _devtools.client
        .sendRequest('Target.closeTarget', {"targetId": targetId}).then(
            (response) => new TargetCloseTargetResponse(response));
  }

/** Creates a new empty BrowserContext. Similar to an incognito profile but you can have more than
one. */
  dart_async.Future<TargetCreateBrowserContextResponse> createBrowserContext() {
    return _devtools.client.sendRequest('Target.createBrowserContext', {}).then(
        (response) => new TargetCreateBrowserContextResponse(response));
  }

/** Creates a new page. */
  dart_async.Future<TargetCreateTargetResponse> createTarget(
      {String url,
      int width,
      int height,
      String browserContextId,
      bool enableBeginFrameControl}) {
    return _devtools.client.sendRequest('Target.createTarget', {
      "url": url,
      "width": width,
      "height": height,
      "browserContextId": browserContextId,
      "enableBeginFrameControl": enableBeginFrameControl
    }).then((response) => new TargetCreateTargetResponse(response));
  }

/** Detaches session with given id. */
  dart_async.Future detachFromTarget({String sessionId, String targetId}) {
    return _devtools.client.sendRequest('Target.detachFromTarget',
        {"sessionId": sessionId, "targetId": targetId});
  }

/** Deletes a BrowserContext, will fail of any open page uses it. */
  dart_async.Future<TargetDisposeBrowserContextResponse> disposeBrowserContext(
      {String browserContextId}) {
    return _devtools.client.sendRequest('Target.disposeBrowserContext', {
      "browserContextId": browserContextId
    }).then((response) => new TargetDisposeBrowserContextResponse(response));
  }

/** Returns information about a target. */
  dart_async.Future<TargetGetTargetInfoResponse> getTargetInfo(
      {String targetId}) {
    return _devtools.client
        .sendRequest('Target.getTargetInfo', {"targetId": targetId}).then(
            (response) => new TargetGetTargetInfoResponse(response));
  }

/** Retrieves a list of available targets. */
  dart_async.Future<TargetGetTargetsResponse> getTargets() {
    return _devtools.client.sendRequest('Target.getTargets', {}).then(
        (response) => new TargetGetTargetsResponse(response));
  }

/** Sends protocol message over session with given id. */
  dart_async.Future sendMessageToTarget(
      {String message, String sessionId, String targetId}) {
    return _devtools.client.sendRequest('Target.sendMessageToTarget',
        {"message": message, "sessionId": sessionId, "targetId": targetId});
  }

/** Controls whether to automatically attach to new targets which are considered to be related to
this one. When turned on, attaches to all existing related targets as well. When turned off,
automatically detaches from all currently attached targets. */
  dart_async.Future setAutoAttach(
      {bool autoAttach, bool waitForDebuggerOnStart}) {
    return _devtools.client.sendRequest('Target.setAutoAttach', {
      "autoAttach": autoAttach,
      "waitForDebuggerOnStart": waitForDebuggerOnStart
    });
  }

/** Controls whether to discover available targets and notify via
`targetCreated/targetInfoChanged/targetDestroyed` events. */
  dart_async.Future setDiscoverTargets({bool discover}) {
    return _devtools.client
        .sendRequest('Target.setDiscoverTargets', {"discover": discover});
  }

/** Enables target discovery for the specified locations, when `setDiscoverTargets` was set to
`true`. */
  dart_async.Future setRemoteLocations({List<RemoteLocation> locations}) {
    return _devtools.client
        .sendRequest('Target.setRemoteLocations', {"locations": locations});
  }
}

class DevToolsTethering {
  DevToolsTethering(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Request browser port binding. */
  dart_async.Future bind({int port}) {
    return _devtools.client.sendRequest('Tethering.bind', {"port": port});
  }

/** Request browser port unbinding. */
  dart_async.Future unbind({int port}) {
    return _devtools.client.sendRequest('Tethering.unbind', {"port": port});
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

/** Stop trace events collection. */
  dart_async.Future end() {
    return _devtools.client.sendRequest('Tracing.end', {});
  }

/** Gets supported tracing categories. */
  dart_async.Future<TracingGetCategoriesResponse> getCategories() {
    return _devtools.client.sendRequest('Tracing.getCategories', {}).then(
        (response) => new TracingGetCategoriesResponse(response));
  }

/** Record a clock sync marker in the trace. */
  dart_async.Future recordClockSyncMarker({String syncId}) {
    return _devtools.client
        .sendRequest('Tracing.recordClockSyncMarker', {"syncId": syncId});
  }

/** Request a global memory dump. */
  dart_async.Future<TracingRequestMemoryDumpResponse> requestMemoryDump() {
    return _devtools.client.sendRequest('Tracing.requestMemoryDump', {}).then(
        (response) => new TracingRequestMemoryDumpResponse(response));
  }

/** Start trace events collection. */
  dart_async.Future start(
      {String categories,
      String options,
      num bufferUsageReportingInterval,
      String transferMode,
      String streamCompression,
      TraceConfig traceConfig}) {
    return _devtools.client.sendRequest('Tracing.start', {
      "categories": categories,
      "options": options,
      "bufferUsageReportingInterval": bufferUsageReportingInterval,
      "transferMode": transferMode,
      "streamCompression": streamCompression,
      "traceConfig": traceConfig
    });
  }
}

abstract class ChromeDevToolsBase {
  ChromeDevToolsBase() {
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

  json_rpc_2.Client get client;
}

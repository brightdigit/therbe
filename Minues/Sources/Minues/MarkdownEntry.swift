//
//  File.swift
//  
//
//  Created by Leo Dion on 7/22/19.
//

import Foundation


public struct MarkdownEntry {
  public let frontMatter: FrontMatter
  public let markdown: String
  public let url : URL
  
  var text : String {
    return """
---
\(self.frontMatter.yaml)
---
\(self.markdown.trimmingCharacters(in: .whitespacesAndNewlines))
"""
  }
}

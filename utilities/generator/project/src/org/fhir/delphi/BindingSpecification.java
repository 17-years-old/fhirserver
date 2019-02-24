package org.fhir.delphi;
/*
Copyright (c) 2011+, HL7, Inc
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, 
are permitted provided that the following conditions are met:

 * Redistributions of source code must retain the above copyright notice, this 
   list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, 
   this list of conditions and the following disclaimer in the documentation 
   and/or other materials provided with the distribution.
 * Neither the name of HL7 nor the names of its contributors may be used to 
   endorse or promote products derived from this software without specific 
   prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT 
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
POSSIBILITY OF SUCH DAMAGE.

*/
import java.util.ArrayList;
import java.util.List;

import org.hl7.fhir.dstu2.model.Enumerations.BindingStrength;
import org.hl7.fhir.dstu2.model.ValueSet;
import org.hl7.fhir.dstu2.model.ValueSet.ValueSetExpansionContainsComponent;

/**
 * A concept domain - a use of terminology in FHIR.
 * A concept domain has a name, a definition, and information about what is in it (bindingType and binding/details, and maybe a list of defined codes) 
 * 
 * Technically, a concept domain is a facade on the full model in the core principles
 * 
 * @author Grahame
 *
 */
public class BindingSpecification {
  
  public static final String DEFAULT_OID_CS = "2.16.840.1.113883.4.642.1.";
  public static final String DEFAULT_OID_VS = "2.16.840.1.113883.4.642.2.";
  
  public enum BindingMethod {
    Unbound,
    CodeList, 
    ValueSet,
    Reference,
    Special
  }
  
  // for common bindings - make sure binding doesn't cross code / Coding boundary
  public enum ElementType {
    Unknown,
    Simple,
    Complex
  }

  // use tracking
  private ElementType elementType = ElementType.Unknown;
  private String usageContext;
  private List<String> useContexts = new ArrayList<String>(); // slated for removal
  private BindingMethod binding;
  private String source; // for useful error messages during build
  private String v2Map;
  private String v3Map;
  private boolean shared;

  // in ElementDefinition.binding 
  private String name;
  private BindingStrength strength;
  private String description;
  private String reference;
  
  
  // to get rid of:
  private String id; // to generate the OID
  
  // to move into valueset 
	private String definition;
  private String uri; // used as the official value set identifier if provided, else one will be synthesized. For when code list is actually a value set defined elsewhere
  private String webSite;
  private String email;
  private String copyright;
//  private List<DefinedCode> codes = new ArrayList<DefinedCode>();
  private String csOid;
  private String vsOid;
//  private List<DefinedCode> childCodes;
  private List<DefinedCode> allCodes;
private String vsUrl;
private boolean noEnum;
  

  
  
  // analysis during run time

  
  public BindingSpecification(String usageContext, String name, boolean shared) {
    super();
    this.usageContext = usageContext;
    this.name = name; 
    this.shared = shared;
  }

  public String getUsageContext() {
    return usageContext;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getDefinition() {
    return definition;
  }

  public void setDefinition(String definition) {
    this.definition = definition;
  }

  public BindingMethod getBinding() {
    return binding;
  }

  public void setBindingMethod(BindingMethod binding) {
    this.binding = binding;
  }

  public String getReference() {
    return reference;
  }

  public BindingSpecification setReference(String reference) {
    this.reference = reference;
    return this;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

//  public List<DefinedCode> getCodes() {
//    return codes;
//  }
//	
	public boolean hasReference() {
	  return !(reference == null || reference.equals(""));
	}

  public String getSource() {
    return source;
  }

  public void setSource(String source) {
    this.source = source;
  }
  
  public BindingStrength getStrength() {
    return strength;
  }

  public void setStrength(BindingStrength strength) {
    this.strength = strength;
  }

//  public static BindingSpecification getBindingFromList(Map<String, BindingSpecification> conceptDomains, String conceptDomain) {
//	  for (BindingSpecification cd : conceptDomains.values())
//		  if (cd.name.equals(conceptDomain))
//			  return cd;
//	
//	  return null;
//  }

  public List<String> getUseContexts() {
    return useContexts;
  }

  public void setUseContexts(List<String> useContexts) {
    this.useContexts = useContexts;
  }

//  public boolean hasExternalCodes() {
//    boolean external = false;
//    for (DefinedCode c : codes)
//      if (!Utilities.noString(c.getSystem()))
//        external = true;
//    return external;
//  }
//
//  public boolean hasInternalCodes() {
//    boolean internal = false;
//    for (DefinedCode c : codes)
//      if (Utilities.noString(c.getSystem()))
//        internal = true;
//    return internal;
//  }
//
//  
//  public List<String> getVSSources() {
//    List<String> vslist = new ArrayList<String>();
//    boolean internal = false;
//    for (DefinedCode c : codes) {
//      if (Utilities.noString(c.getSystem())) {
//        internal = true;
//      } else {
//        if (!vslist.contains(c.getSystem()))
//          vslist.add(c.getSystem());
//      }
//    }
//    if (internal)
//      vslist.add(0, "");
//    return vslist;
//  }

  
//  public List<DefinedCode> getChildCodes() throws Exception {
//    if (childCodes == null) {
//      childCodes = new ArrayList<DefinedCode>();
//      for (DefinedCode c : codes) {
//        if (c.hasParent()) { 
//          DefinedCode p = getCode(c.getParent());
//          if (p == null)
//            throw new Exception("unable to find parent Code '"+c.getParent()+"' for code '"+c.getCode()+"'");
//          p.getChildCodes().add(c);
//        } else
//          childCodes.add(c);
//      }
//    }
//    return childCodes;
//  }
//
//  public DefinedCode getCode(String code) {
//    for (DefinedCode c : codes) {
//      if (code.equals(c.getCode()))
//        return c;
//      if (code.equals("#"+c.getId()))
//        return c;
//    }
//    return null;
//  }
//
//  public boolean isHeirachical() {
//    boolean hasParent = false;
//    for (DefinedCode c : getCodes()) {
//      hasParent = hasParent || c.hasParent();
//    }
//    return hasParent;
//  }

  public ElementType getElementType() {
    return elementType;
  }

  public void setElementType(ElementType elementType) {
    this.elementType = elementType;
  }

  public String getUri() {
    return uri;
  }

  public void setUri(String uri) {
    this.uri = uri;
  }

  public String getWebSite() {
    return webSite;
  }

  public void setWebSite(String webSite) {
    this.webSite = webSite;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getCopyright() {
    return copyright;
  }

  public void setCopyright(String copyright) {
    this.copyright = copyright;
  }

  public String getV2Map() {
    return v2Map;
  }

  public void setV2Map(String v2Map) {
    this.v2Map = v2Map;
  }

  public String getV3Map() {
    return v3Map;
  }

  public void setV3Map(String v3Map) {
    this.v3Map = v3Map;
  }

  public String getCsOid() {
    return csOid;
  }

  public void setCsOid(String csOid) {
    this.csOid = csOid;
  }

  public String getVsOid() {
    return vsOid;
  }

  public void setVsOid(String vsOid) {
    this.vsOid = vsOid;
  }

  
  public List<DefinedCode> getAllCodes() throws Exception {
    return allCodes;
  }


  public boolean isShared() {
    return shared;
  }

  public void loadFromExpansion(org.hl7.fhir.dstu3.model.ValueSet vs) {
    vsUrl = vs.getUrl();
    allCodes = new ArrayList<DefinedCode>();
    for (org.hl7.fhir.dstu3.model.ValueSet.ValueSetExpansionContainsComponent c : vs.getExpansion().getContains()) {
      DefinedCode cd = new DefinedCode();
      cd.setCode(c.getCode());
      cd.setSystem(c.getSystem());
      cd.setDisplay(c.getDisplay());
      allCodes.add(cd);
    }
    
  }
  
  public void loadFromExpansion(org.hl7.fhir.r4.model.ValueSet vs) {
    vsUrl = vs.getUrl();
    
    if (vs.getCompose().getInclude().size() == 1 && vs.getCompose().getIncludeFirstRep().hasSystem() && !vs.getCompose().getIncludeFirstRep().hasFilter() && !vs.getCompose().getIncludeFirstRep().hasConcept() && !vs.getCompose().getIncludeFirstRep().getSystem().startsWith("http://hl7.org/fhir"))
      noEnum = true;
    else if (vs.getExpansion().hasExtension("http://hl7.org/fhir/StructureDefinition/valueset-toocostly"))
      noEnum = true;
    else {
      allCodes = new ArrayList<DefinedCode>();
      for (org.hl7.fhir.r4.model.ValueSet.ValueSetExpansionContainsComponent c : vs.getExpansion().getContains()) {
        DefinedCode cd = new DefinedCode();
        cd.setCode(c.getCode());
        cd.setSystem(c.getSystem());
        cd.setDisplay(c.getDisplay());
        allCodes.add(cd);
      }
    }
  }

  public void loadFromExpansion(org.hl7.fhir.r5.model.ValueSet vs) {
    vsUrl = vs.getUrl();
    
    if (vs.getCompose().getInclude().size() == 1 && vs.getCompose().getIncludeFirstRep().hasSystem() && !vs.getCompose().getIncludeFirstRep().hasFilter() && !vs.getCompose().getIncludeFirstRep().hasConcept() && !vs.getCompose().getIncludeFirstRep().getSystem().startsWith("http://hl7.org/fhir"))
      noEnum = true;
    else if (vs.getExpansion().hasExtension("http://hl7.org/fhir/StructureDefinition/valueset-toocostly"))
      noEnum = true;
    else {
      allCodes = new ArrayList<DefinedCode>();
      for (org.hl7.fhir.r5.model.ValueSet.ValueSetExpansionContainsComponent c : vs.getExpansion().getContains()) {
        DefinedCode cd = new DefinedCode();
        cd.setCode(c.getCode());
        cd.setSystem(c.getSystem());
        cd.setDisplay(c.getDisplay());
        allCodes.add(cd);
      }
    }
  }

  public void loadFromExpansion(ValueSet vs) {
    vsUrl = vs.getUrl();
    allCodes = new ArrayList<DefinedCode>();
    for (ValueSetExpansionContainsComponent c : vs.getExpansion().getContains()) {
      DefinedCode cd = new DefinedCode();
      cd.setCode(c.getCode());
      cd.setSystem(c.getSystem());
      cd.setDisplay(c.getDisplay());
      allCodes.add(cd);
    }
    
  }

  public boolean hasAllCodes() {
    return allCodes != null;
  }

  public String getVsUrl() {
    return vsUrl;
  }

  public boolean isNoEnum() {
    return noEnum;
  }  
  
  
}

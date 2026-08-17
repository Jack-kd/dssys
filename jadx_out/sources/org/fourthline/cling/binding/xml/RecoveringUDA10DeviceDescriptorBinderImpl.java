package org.fourthline.cling.binding.xml;

import java.util.logging.Logger;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.meta.Device;

/* loaded from: classes5.dex */
public class RecoveringUDA10DeviceDescriptorBinderImpl extends UDA10DeviceDescriptorBinderImpl {
    private static Logger log = Logger.getLogger(RecoveringUDA10DeviceDescriptorBinderImpl.class.getName());

    private String fixGarbageLeadingChars(String str) {
        int iIndexOf = str.indexOf("<?xml");
        return iIndexOf == -1 ? str : str.substring(iIndexOf);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:24:0x0087
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:225)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:195)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:62)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.processExcHandler(ExcHandlersRegionMaker.java:144)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:77)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Removed duplicated region for block: B:50:0x005f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // org.fourthline.cling.binding.xml.UDA10DeviceDescriptorBinderImpl, org.fourthline.cling.binding.xml.DeviceDescriptorBinder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <D extends org.fourthline.cling.model.meta.Device> D describe(D r8, java.lang.String r9) throws org.fourthline.cling.binding.xml.DescriptorBindingException, org.fourthline.cling.model.ValidationException {
        /*
            r7 = this;
            if (r9 == 0) goto Lc
            java.lang.String r9 = r9.trim()     // Catch: org.fourthline.cling.model.ValidationException -> L7 org.fourthline.cling.binding.xml.DescriptorBindingException -> La
            goto Lc
        L7:
            r8 = move-exception
            goto Le8
        La:
            r0 = move-exception
            goto L11
        Lc:
            org.fourthline.cling.model.meta.Device r8 = super.describe(r8, r9)     // Catch: org.fourthline.cling.model.ValidationException -> L7 org.fourthline.cling.binding.xml.DescriptorBindingException -> La
            return r8
        L11:
            java.util.logging.Logger r1 = org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.log     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r2.<init>()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r3 = "Regular parsing failed: "
            r2.append(r3)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.Throwable r3 = org.seamless.util.Exceptions.unwrap(r0)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r3 = r3.getMessage()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r2.append(r3)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r2 = r2.toString()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r1.warning(r2)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r1 = r7.fixGarbageLeadingChars(r9)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            if (r1 == 0) goto L59
            org.fourthline.cling.model.meta.Device r8 = super.describe(r8, r1)     // Catch: org.fourthline.cling.model.ValidationException -> L7 org.fourthline.cling.binding.xml.DescriptorBindingException -> L3a
            return r8
        L3a:
            r1 = move-exception
            java.util.logging.Logger r2 = org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.log     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r3.<init>()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r4 = "Removing leading garbage didn't work: "
            r3.append(r4)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.Throwable r1 = org.seamless.util.Exceptions.unwrap(r1)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r1 = r1.getMessage()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r3.append(r1)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r1 = r3.toString()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r2.warning(r1)     // Catch: org.fourthline.cling.model.ValidationException -> L7
        L59:
            java.lang.String r1 = r7.fixGarbageTrailingChars(r9, r0)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            if (r1 == 0) goto L83
            org.fourthline.cling.model.meta.Device r8 = super.describe(r8, r1)     // Catch: org.fourthline.cling.model.ValidationException -> L7 org.fourthline.cling.binding.xml.DescriptorBindingException -> L64
            return r8
        L64:
            r1 = move-exception
            java.util.logging.Logger r2 = org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.log     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r3.<init>()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r4 = "Removing trailing garbage didn't work: "
            r3.append(r4)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.Throwable r1 = org.seamless.util.Exceptions.unwrap(r1)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r1 = r1.getMessage()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r3.append(r1)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r1 = r3.toString()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r2.warning(r1)     // Catch: org.fourthline.cling.model.ValidationException -> L7
        L83:
            r1 = 0
            r2 = r9
            r3 = r0
        L86:
            r4 = 5
            if (r1 >= r4) goto Lb6
            java.lang.String r2 = r7.fixMissingNamespaces(r2, r3)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            if (r2 == 0) goto Lb6
            org.fourthline.cling.model.meta.Device r8 = super.describe(r8, r2)     // Catch: org.fourthline.cling.model.ValidationException -> L7 org.fourthline.cling.binding.xml.DescriptorBindingException -> L94
            return r8
        L94:
            r3 = move-exception
            java.util.logging.Logger r4 = org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.log     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r5.<init>()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r6 = "Fixing namespace prefix didn't work: "
            r5.append(r6)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.Throwable r6 = org.seamless.util.Exceptions.unwrap(r3)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r6 = r6.getMessage()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r5.append(r6)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r5 = r5.toString()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r4.warning(r5)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            int r1 = r1 + 1
            goto L86
        Lb6:
            java.lang.String r1 = org.seamless.xml.XmlPullParserUtils.fixXMLEntities(r9)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            boolean r2 = r1.equals(r9)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            if (r2 != 0) goto Le4
            org.fourthline.cling.model.meta.Device r8 = super.describe(r8, r1)     // Catch: org.fourthline.cling.model.ValidationException -> L7 org.fourthline.cling.binding.xml.DescriptorBindingException -> Lc5
            return r8
        Lc5:
            r8 = move-exception
            java.util.logging.Logger r1 = org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.log     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r2.<init>()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r3 = "Fixing XML entities didn't work: "
            r2.append(r3)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.Throwable r8 = org.seamless.util.Exceptions.unwrap(r8)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r8 = r8.getMessage()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r2.append(r8)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            java.lang.String r8 = r2.toString()     // Catch: org.fourthline.cling.model.ValidationException -> L7
            r1.warning(r8)     // Catch: org.fourthline.cling.model.ValidationException -> L7
        Le4:
            r7.handleInvalidDescriptor(r9, r0)     // Catch: org.fourthline.cling.model.ValidationException -> L7
            goto Lf0
        Le8:
            r0 = 0
            org.fourthline.cling.model.meta.Device r8 = r7.handleInvalidDevice(r9, r0, r8)
            if (r8 == 0) goto Lf0
            return r8
        Lf0:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "No device produced, did you swallow exceptions in your subclass?"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.describe(org.fourthline.cling.model.meta.Device, java.lang.String):org.fourthline.cling.model.meta.Device");
    }

    public String fixGarbageTrailingChars(String str, DescriptorBindingException descriptorBindingException) {
        int iIndexOf = str.indexOf("</root>");
        if (iIndexOf == -1) {
            log.warning("No closing </root> element in descriptor");
            return null;
        }
        if (str.length() == iIndexOf + 7) {
            return null;
        }
        log.warning("Detected garbage characters after <root> node, removing");
        return str.substring(0, iIndexOf) + "</root>";
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0044 A[PHI: r0
      0x0044: PHI (r0v7 java.util.regex.Matcher) = (r0v6 java.util.regex.Matcher), (r0v3 java.util.regex.Matcher) binds: [B:17:0x0040, B:13:0x002a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String fixMissingNamespaces(java.lang.String r8, org.fourthline.cling.binding.xml.DescriptorBindingException r9) {
        /*
            r7 = this;
            java.lang.Throwable r9 = r9.getCause()
            boolean r0 = r9 instanceof org.xml.sax.SAXParseException
            r1 = 0
            if (r0 != 0) goto Le
            boolean r0 = r9 instanceof org.seamless.xml.ParserException
            if (r0 != 0) goto Le
            return r1
        Le:
            java.lang.String r9 = r9.getMessage()
            if (r9 != 0) goto L15
            return r1
        L15:
            java.lang.String r0 = "The prefix \"(.*)\" for element"
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            java.util.regex.Matcher r0 = r0.matcher(r9)
            boolean r2 = r0.find()
            r3 = 1
            if (r2 == 0) goto L2c
            int r2 = r0.groupCount()
            if (r2 == r3) goto L44
        L2c:
            java.lang.String r0 = "undefined prefix: ([^ ]*)"
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            java.util.regex.Matcher r0 = r0.matcher(r9)
            boolean r9 = r0.find()
            if (r9 == 0) goto Lee
            int r9 = r0.groupCount()
            if (r9 == r3) goto L44
            goto Lee
        L44:
            java.lang.String r9 = r0.group(r3)
            java.util.logging.Logger r0 = org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.log
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "Fixing missing namespace declaration for: "
            r2.append(r4)
            r2.append(r9)
            java.lang.String r2 = r2.toString()
            r0.warning(r2)
            java.lang.String r0 = "<root([^>]*)"
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            java.util.regex.Matcher r0 = r0.matcher(r8)
            boolean r2 = r0.find()
            if (r2 == 0) goto Le7
            int r2 = r0.groupCount()
            if (r2 == r3) goto L75
            goto Le7
        L75:
            java.lang.String r2 = r0.group(r3)
            java.util.logging.Logger r4 = org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.log
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Preserving existing <root> element attributes/namespace declarations: "
            r5.append(r6)
            r6 = 0
            java.lang.String r0 = r0.group(r6)
            r5.append(r0)
            java.lang.String r0 = r5.toString()
            r4.fine(r0)
            java.lang.String r0 = "<root[^>]*>(.*)</root>"
            r4 = 32
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0, r4)
            java.util.regex.Matcher r8 = r0.matcher(r8)
            boolean r0 = r8.find()
            if (r0 == 0) goto Ldf
            int r0 = r8.groupCount()
            if (r0 == r3) goto Lad
            goto Ldf
        Lad:
            java.lang.String r8 = r8.group(r3)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><root "
            r0.append(r1)
            java.util.Locale r1 = java.util.Locale.ROOT
            java.lang.String r3 = "xmlns:%s=\"urn:schemas-dlna-org:device-1-0\""
            java.lang.Object[] r9 = new java.lang.Object[]{r9}
            java.lang.String r9 = java.lang.String.format(r1, r3, r9)
            r0.append(r9)
            r0.append(r2)
            java.lang.String r9 = ">"
            r0.append(r9)
            r0.append(r8)
            java.lang.String r8 = "</root>"
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            return r8
        Ldf:
            java.util.logging.Logger r8 = org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.log
            java.lang.String r9 = "Could not extract body of <root> element"
            r8.fine(r9)
            return r1
        Le7:
            java.util.logging.Logger r8 = org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.log
            java.lang.String r9 = "Could not find <root> element attributes"
            r8.fine(r9)
        Lee:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.fixMissingNamespaces(java.lang.String, org.fourthline.cling.binding.xml.DescriptorBindingException):java.lang.String");
    }

    public void handleInvalidDescriptor(String str, DescriptorBindingException descriptorBindingException) throws DescriptorBindingException {
        throw descriptorBindingException;
    }

    public <D extends Device> D handleInvalidDevice(String str, D d2, ValidationException validationException) throws ValidationException {
        throw validationException;
    }
}

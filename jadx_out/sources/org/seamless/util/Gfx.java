package org.seamless.util;

import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.awt.image.ImageObserver;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;

/* loaded from: classes5.dex */
public class Gfx {
    /* JADX WARN: Removed duplicated region for block: B:14:0x0022 A[PHI: r0
      0x0022: PHI (r0v4 int) = (r0v3 int), (r0v3 int), (r0v7 int) binds: [B:9:0x0018, B:10:0x001a, B:12:0x001e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.awt.image.BufferedImage getScaledInstance(java.awt.image.BufferedImage r10, int r11, int r12, java.lang.Object r13, boolean r14) {
        /*
            int r0 = r10.getTransparency()
            r1 = 1
            if (r0 != r1) goto L8
            goto L9
        L8:
            r1 = 2
        L9:
            if (r14 == 0) goto L15
            int r0 = r10.getWidth()
            int r2 = r10.getHeight()
            r4 = r10
            goto L18
        L15:
            r4 = r10
            r0 = r11
            r2 = r12
        L18:
            if (r14 == 0) goto L22
            if (r0 <= r11) goto L22
            int r0 = r0 / 2
            if (r0 >= r11) goto L22
            r7 = r11
            goto L23
        L22:
            r7 = r0
        L23:
            if (r14 == 0) goto L2d
            if (r2 <= r12) goto L2d
            int r2 = r2 / 2
            if (r2 >= r12) goto L2d
            r8 = r12
            goto L2e
        L2d:
            r8 = r2
        L2e:
            java.awt.image.BufferedImage r10 = new java.awt.image.BufferedImage
            r10.<init>(r7, r8, r1)
            java.awt.Graphics2D r3 = r10.createGraphics()
            java.awt.RenderingHints$Key r0 = java.awt.RenderingHints.KEY_INTERPOLATION
            r3.setRenderingHint(r0, r13)
            r6 = 0
            r9 = 0
            r5 = 0
            r3.drawImage(r4, r5, r6, r7, r8, r9)
            r3.dispose()
            if (r7 != r11) goto L4a
            if (r8 != r12) goto L4a
            return r10
        L4a:
            r4 = r10
            r0 = r7
            r2 = r8
            goto L18
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.Gfx.getScaledInstance(java.awt.image.BufferedImage, int, int, java.lang.Object, boolean):java.awt.image.BufferedImage");
    }

    public static byte[] resizeProportionally(ImageIcon imageIcon, String str, int i2, int i3) throws IOException {
        double iconWidth = i2 != imageIcon.getIconWidth() ? i2 / imageIcon.getIconWidth() : 1.0d;
        double iconHeight = i3 != imageIcon.getIconHeight() ? i3 / imageIcon.getIconHeight() : 1.0d;
        if (iconWidth < iconHeight) {
            i3 = (int) (imageIcon.getIconHeight() * iconWidth);
        } else {
            i2 = (int) (imageIcon.getIconWidth() * iconHeight);
        }
        BufferedImage bufferedImage = new BufferedImage(imageIcon.getIconWidth(), imageIcon.getIconHeight(), DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_PNG.equals(str) ? 2 : 1);
        Graphics2D graphics2DCreateGraphics = bufferedImage.createGraphics();
        graphics2DCreateGraphics.drawImage(imageIcon.getImage(), 0, 0, imageIcon.getIconWidth(), imageIcon.getIconHeight(), (ImageObserver) null);
        graphics2DCreateGraphics.dispose();
        BufferedImage scaledInstance = getScaledInstance(bufferedImage, i2, i3, RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR, false);
        String str2 = DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_PNG.equals(str) ? "png" : (DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_JPEG.equals(str) || "image/jpg".equals(str)) ? "jpeg" : "";
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        ImageIO.write(scaledInstance, str2, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}

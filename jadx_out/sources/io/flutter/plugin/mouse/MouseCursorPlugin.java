package io.flutter.plugin.mouse;

import android.view.PointerIcon;
import androidx.annotation.NonNull;
import androidx.core.view.PointerIconCompat;
import com.baidu.mobads.sdk.internal.a;
import io.flutter.embedding.engine.systemchannels.MouseCursorChannel;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class MouseCursorPlugin {

    @NonNull
    private static HashMap<String, Integer> systemCursorConstants;

    @NonNull
    private final MouseCursorViewDelegate mView;

    @NonNull
    private final MouseCursorChannel mouseCursorChannel;

    public interface MouseCursorViewDelegate {
        @NonNull
        PointerIcon getSystemPointerIcon(int i2);

        void setPointerIcon(@NonNull PointerIcon pointerIcon);
    }

    public MouseCursorPlugin(@NonNull MouseCursorViewDelegate mouseCursorViewDelegate, @NonNull MouseCursorChannel mouseCursorChannel) {
        this.mView = mouseCursorViewDelegate;
        this.mouseCursorChannel = mouseCursorChannel;
        mouseCursorChannel.setMethodHandler(new MouseCursorChannel.MouseCursorMethodHandler() { // from class: io.flutter.plugin.mouse.MouseCursorPlugin.1
            @Override // io.flutter.embedding.engine.systemchannels.MouseCursorChannel.MouseCursorMethodHandler
            public void activateSystemCursor(@NonNull String str) {
                MouseCursorPlugin.this.mView.setPointerIcon(MouseCursorPlugin.this.resolveSystemCursor(str));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PointerIcon resolveSystemCursor(@NonNull String str) {
        if (systemCursorConstants == null) {
            systemCursorConstants = new HashMap<String, Integer>() { // from class: io.flutter.plugin.mouse.MouseCursorPlugin.2
                private static final long serialVersionUID = 1;

                {
                    put("alias", 1010);
                    Integer numValueOf = Integer.valueOf(PointerIconCompat.TYPE_ALL_SCROLL);
                    put("allScroll", numValueOf);
                    put("basic", 1000);
                    put("cell", 1006);
                    put("click", 1002);
                    put("contextMenu", 1001);
                    put("copy", 1011);
                    Integer numValueOf2 = Integer.valueOf(PointerIconCompat.TYPE_NO_DROP);
                    put("forbidden", numValueOf2);
                    put("grab", Integer.valueOf(PointerIconCompat.TYPE_GRAB));
                    put("grabbing", Integer.valueOf(PointerIconCompat.TYPE_GRABBING));
                    put("help", 1003);
                    put("move", numValueOf);
                    put(a.f10877a, 0);
                    put("noDrop", numValueOf2);
                    put("precise", 1007);
                    put(a.f10878b, Integer.valueOf(PointerIconCompat.TYPE_TEXT));
                    Integer numValueOf3 = Integer.valueOf(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW);
                    put("resizeColumn", numValueOf3);
                    Integer numValueOf4 = Integer.valueOf(PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW);
                    put("resizeDown", numValueOf4);
                    Integer numValueOf5 = Integer.valueOf(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW);
                    put("resizeUpLeft", numValueOf5);
                    Integer numValueOf6 = Integer.valueOf(PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW);
                    put("resizeDownRight", numValueOf6);
                    put("resizeLeft", numValueOf3);
                    put("resizeLeftRight", numValueOf3);
                    put("resizeRight", numValueOf3);
                    put("resizeRow", numValueOf4);
                    put("resizeUp", numValueOf4);
                    put("resizeUpDown", numValueOf4);
                    put("resizeUpLeft", numValueOf6);
                    put("resizeUpRight", numValueOf5);
                    put("resizeUpLeftDownRight", numValueOf6);
                    put("resizeUpRightDownLeft", numValueOf5);
                    put("verticalText", Integer.valueOf(PointerIconCompat.TYPE_VERTICAL_TEXT));
                    put("wait", 1004);
                    put("zoomIn", Integer.valueOf(PointerIconCompat.TYPE_ZOOM_IN));
                    put("zoomOut", Integer.valueOf(PointerIconCompat.TYPE_ZOOM_OUT));
                }
            };
        }
        return this.mView.getSystemPointerIcon(systemCursorConstants.getOrDefault(str, 1000).intValue());
    }

    public void destroy() {
        this.mouseCursorChannel.setMethodHandler(null);
    }
}

.class public abstract synthetic Lk0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lcom/bytedance/pangle/provider/PluginContentProvider;Landroid/net/Uri;Landroid/os/Bundle;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

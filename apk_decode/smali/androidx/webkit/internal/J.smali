.class public final synthetic Landroidx/webkit/internal/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lorg/chromium/support_lib_boundary/WebViewBackForwardCacheSettingsBoundaryInterface;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/support_lib_boundary/WebViewBackForwardCacheSettingsBoundaryInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/J;->a:Lorg/chromium/support_lib_boundary/WebViewBackForwardCacheSettingsBoundaryInterface;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/J;->a:Lorg/chromium/support_lib_boundary/WebViewBackForwardCacheSettingsBoundaryInterface;

    invoke-static {v0}, Landroidx/webkit/internal/WebSettingsAdapter;->a(Lorg/chromium/support_lib_boundary/WebViewBackForwardCacheSettingsBoundaryInterface;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

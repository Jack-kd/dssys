.class public final synthetic Landroidx/webkit/internal/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/webkit/WebViewRenderProcessClient;

.field public final synthetic c:Landroid/webkit/WebView;

.field public final synthetic d:Landroidx/webkit/WebViewRenderProcess;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/P;->b:Landroidx/webkit/WebViewRenderProcessClient;

    iput-object p2, p0, Landroidx/webkit/internal/P;->c:Landroid/webkit/WebView;

    iput-object p3, p0, Landroidx/webkit/internal/P;->d:Landroidx/webkit/WebViewRenderProcess;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/P;->b:Landroidx/webkit/WebViewRenderProcessClient;

    iget-object v1, p0, Landroidx/webkit/internal/P;->c:Landroid/webkit/WebView;

    iget-object v2, p0, Landroidx/webkit/internal/P;->d:Landroidx/webkit/WebViewRenderProcess;

    invoke-static {v0, v1, v2}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->a(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V

    return-void
.end method

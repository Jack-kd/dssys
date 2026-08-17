.class final Lcom/kwad/sdk/utils/ce$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/utils/ce;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic brB:Landroid/webkit/WebView;

.field final synthetic brC:Ljava/lang/String;

.field final synthetic brD:Landroid/webkit/ValueCallback;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/utils/ce$1;->brB:Landroid/webkit/WebView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/utils/ce$1;->brC:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/sdk/utils/ce$1;->brD:Landroid/webkit/ValueCallback;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/ce$1;->brB:Landroid/webkit/WebView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/sdk/utils/ce$1;->brC:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/kwad/sdk/utils/ce$1;->brD:Landroid/webkit/ValueCallback;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    return-void
.end method

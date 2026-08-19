.class final Lcom/kwad/components/core/webview/jshandler/ae$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/webview/jshandler/ae$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/webview/jshandler/ae;->a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic TI:Lcom/kwad/sdk/core/webview/c/c;

.field final synthetic aqo:Lcom/kwad/components/core/webview/jshandler/ae;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/webview/jshandler/ae;Lcom/kwad/sdk/core/webview/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/webview/jshandler/ae$1;->aqo:Lcom/kwad/components/core/webview/jshandler/ae;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/webview/jshandler/ae$1;->TI:Lcom/kwad/sdk/core/webview/c/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final u(II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/ae$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/webview/jshandler/ae$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Lcom/kwad/components/core/webview/jshandler/ae$a;->width:I

    .line 7
    .line 8
    iput p2, v0, Lcom/kwad/components/core/webview/jshandler/ae$a;->height:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/kwad/components/core/webview/jshandler/ae$1;->TI:Lcom/kwad/sdk/core/webview/c/c;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/kwad/sdk/core/webview/c/c;->b(Lcom/kwad/sdk/core/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

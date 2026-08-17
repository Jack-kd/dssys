.class final Lcom/kwad/components/ad/nativead/c/a$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/webview/jshandler/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/nativead/c/a$4;->a(Lcom/kwad/sdk/components/t;Lcom/kwad/sdk/core/webview/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic qN:Lcom/kwad/components/ad/nativead/c/a$4;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/nativead/c/a$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/c/a$4$2;->qN:Lcom/kwad/components/ad/nativead/c/a$4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/webview/jshandler/j;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "getConvertCount"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/kwad/components/ad/nativead/c/a$4$2;->qN:Lcom/kwad/components/ad/nativead/c/a$4;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/kwad/components/ad/nativead/c/a$4;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/kwad/components/ad/nativead/c/a;->l(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget p2, p2, Lcom/kwad/sdk/core/response/model/AdInfo;->convertCount:I

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/jshandler/j;->cd(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

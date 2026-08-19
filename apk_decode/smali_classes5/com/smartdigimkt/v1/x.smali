.class public final Lcom/smartdigimkt/v1/x;
.super Lcom/smartdigimkt/x/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/smartdigimkt/m3/c;

.field public final synthetic c:Lcom/smartdigimkt/sdk/basead/ui/BaseATView;


# direct methods
.method public constructor <init>(Lcom/smartdigimkt/sdk/basead/ui/BaseATView;Lcom/smartdigimkt/m3/c;Lcom/smartdigimkt/m3/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/v1/x;->c:Lcom/smartdigimkt/sdk/basead/ui/BaseATView;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/smartdigimkt/v1/x;->b:Lcom/smartdigimkt/m3/c;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/smartdigimkt/x/b;-><init>(Lcom/smartdigimkt/m3/c;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onStatusChanged(ILjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p2, 0x2

    .line 2
    if-eq p1, p2, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/smartdigimkt/v1/x;->c:Lcom/smartdigimkt/sdk/basead/ui/BaseATView;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/smartdigimkt/sdk/basead/ui/BaseATView;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/smartdigimkt/v1/x;->b:Lcom/smartdigimkt/m3/c;

    .line 10
    .line 11
    iget-object p2, p1, Lcom/smartdigimkt/m3/c;->m:Ljava/lang/String;

    .line 12
    .line 13
    iget p1, p1, Lcom/smartdigimkt/m3/c;->o:I

    .line 14
    .line 15
    iget-object p1, p0, Lcom/smartdigimkt/v1/x;->c:Lcom/smartdigimkt/sdk/basead/ui/BaseATView;

    .line 16
    .line 17
    const/16 p2, 0x83

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/smartdigimkt/sdk/basead/ui/BaseATView;->a(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

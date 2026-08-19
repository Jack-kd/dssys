.class public final synthetic Lb1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/smartdigimkt/sdk/basead/ui/FullScreenATView;

.field public final synthetic c:Lcom/smartdigimkt/m3/d;


# direct methods
.method public synthetic constructor <init>(Lcom/smartdigimkt/sdk/basead/ui/FullScreenATView;Lcom/smartdigimkt/m3/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/a;->b:Lcom/smartdigimkt/sdk/basead/ui/FullScreenATView;

    iput-object p2, p0, Lb1/a;->c:Lcom/smartdigimkt/m3/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb1/a;->b:Lcom/smartdigimkt/sdk/basead/ui/FullScreenATView;

    iget-object v1, p0, Lb1/a;->c:Lcom/smartdigimkt/m3/d;

    invoke-virtual {v0, v1}, Lcom/smartdigimkt/sdk/basead/ui/FullScreenATView;->a(Lcom/smartdigimkt/m3/d;)V

    return-void
.end method

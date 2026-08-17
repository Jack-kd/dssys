.class public final synthetic Lcom/sigmob/sdk/nativead/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ac;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/nativead/ab;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/nativead/ab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/D;->b:Lcom/sigmob/sdk/nativead/ab;

    return-void
.end method


# virtual methods
.method public final onAdClick(ZLcom/sigmob/sdk/base/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/D;->b:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/nativead/ab;->a(Lcom/sigmob/sdk/nativead/ab;ZLcom/sigmob/sdk/base/a;)V

    return-void
.end method

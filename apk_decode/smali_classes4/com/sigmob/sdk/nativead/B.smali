.class public final synthetic Lcom/sigmob/sdk/nativead/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/nativead/d;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/nativead/ab;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/nativead/ab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/B;->a:Lcom/sigmob/sdk/nativead/ab;

    return-void
.end method


# virtual methods
.method public final onAction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/B;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/ab;->i(Lcom/sigmob/sdk/nativead/ab;)V

    return-void
.end method

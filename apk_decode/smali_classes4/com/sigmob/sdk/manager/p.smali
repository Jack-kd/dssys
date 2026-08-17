.class public final synthetic Lcom/sigmob/sdk/manager/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/manager/f;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/manager/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/manager/p;->b:Lcom/sigmob/sdk/manager/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/manager/p;->b:Lcom/sigmob/sdk/manager/f;

    invoke-static {v0}, Lcom/sigmob/sdk/manager/f;->o(Lcom/sigmob/sdk/manager/f;)V

    return-void
.end method

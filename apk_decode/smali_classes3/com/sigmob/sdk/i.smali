.class public final synthetic Lcom/sigmob/sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/Sigmob;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/Sigmob;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/i;->b:Lcom/sigmob/sdk/Sigmob;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/i;->b:Lcom/sigmob/sdk/Sigmob;

    invoke-static {v0}, Lcom/sigmob/sdk/Sigmob;->c(Lcom/sigmob/sdk/Sigmob;)V

    return-void
.end method

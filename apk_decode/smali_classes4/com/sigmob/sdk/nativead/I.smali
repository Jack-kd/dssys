.class public final synthetic Lcom/sigmob/sdk/nativead/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/nativead/q$e;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/nativead/b;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/nativead/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/I;->a:Lcom/sigmob/sdk/nativead/b;

    return-void
.end method


# virtual methods
.method public final onItemClick(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/I;->a:Lcom/sigmob/sdk/nativead/b;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/nativead/b;->c(Lcom/sigmob/sdk/nativead/b;ILjava/lang/String;)V

    return-void
.end method

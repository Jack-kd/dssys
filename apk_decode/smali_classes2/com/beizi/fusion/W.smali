.class public final synthetic Lcom/beizi/fusion/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/beizi/fusion/y;


# direct methods
.method public synthetic constructor <init>(Lcom/beizi/fusion/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beizi/fusion/W;->b:Lcom/beizi/fusion/y;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/W;->b:Lcom/beizi/fusion/y;

    invoke-static {v0}, Lcom/beizi/fusion/y;->d(Lcom/beizi/fusion/y;)V

    return-void
.end method

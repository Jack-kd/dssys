.class public final synthetic LR/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/byazt/lsx/j;


# direct methods
.method public synthetic constructor <init>(Lcom/byazt/lsx/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR/b;->b:Lcom/byazt/lsx/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, LR/b;->b:Lcom/byazt/lsx/j;

    invoke-static {v0}, Lcom/byazt/lsx/a;->a(Lcom/byazt/lsx/j;)V

    return-void
.end method

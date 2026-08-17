.class public final synthetic LX/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/byazt/owd/hp;


# direct methods
.method public synthetic constructor <init>(Lcom/byazt/owd/hp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/c;->b:Lcom/byazt/owd/hp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, LX/c;->b:Lcom/byazt/owd/hp;

    invoke-virtual {v0}, Lcom/byazt/owd/hp;->l()V

    return-void
.end method

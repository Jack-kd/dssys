.class public interface abstract Lcom/byazt/rc/jx;
.super Ljava/lang/Object;


# virtual methods
.method public abstract hp(Lcom/byazt/rc/hp;)V
    .param p1    # Lcom/byazt/rc/hp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract l()Lcom/byazt/rc/hp;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/rc/u;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

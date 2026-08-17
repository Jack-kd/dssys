.class public Lcom/ubix/ssp/ad/e/a0/y/d/b;
.super Landroid/app/Instrumentation;


# instance fields
.field private final a:Landroid/app/Instrumentation;

.field private b:Ljava/lang/Object;

.field final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 3

    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v1

    const-string v2, "YW5kcm9pZC5hcHAuSW5zdHJ1bWVudGF0aW9u"

    invoke-virtual {v1, v2}, Lcom/ubix/ssp/ad/e/a0/n$b;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a:Landroid/app/Instrumentation;

    return-void
.end method

.method private a(ZLandroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->b()Lcom/ubix/ssp/ad/e/a0/y/d/a;

    move-result-object v2

    const-class v0, Landroid/app/Instrumentation;

    const-string v3, "guard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const-string v6, "execStartActivity"

    :try_start_0
    const-class v7, Landroid/content/Context;

    const-class v8, Landroid/os/IBinder;

    const-class v9, Landroid/os/IBinder;

    const-class v10, Landroid/app/Activity;

    const-class v11, Landroid/content/Intent;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v13, Landroid/os/Bundle;

    filled-new-array/range {v7 .. v13}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v6, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v6, v4

    :goto_1
    move v7, v5

    goto/16 :goto_9

    :catch_1
    move-exception v0

    goto/16 :goto_c

    :cond_0
    const-string v6, "execStartActivities"

    :try_start_1
    const-class v7, Landroid/content/Context;

    const-class v8, Landroid/os/IBinder;

    const-class v9, Landroid/os/IBinder;

    const-class v10, Landroid/app/Activity;

    const-class v11, [Landroid/content/Intent;

    const-class v12, Landroid/os/Bundle;

    filled-new-array/range {v7 .. v12}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :goto_2
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v6, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v7, "exec in"

    invoke-static {v3, v7}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->b()Lcom/ubix/ssp/ad/e/a0/y/d/a;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v0, "exec no callback"

    invoke-static {v3, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a()V

    if-nez p1, :cond_1

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a:Landroid/app/Instrumentation;

    aget-object v11, p6, v5

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v13, p8

    filled-new-array/range {v7 .. v13}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    check-cast v0, Landroid/app/Instrumentation$ActivityResult;

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a:Landroid/app/Instrumentation;

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p8

    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/ubix/ssp/ad/e/a0/y/d/a;->a()V

    :cond_3
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v9, v5

    move v10, v9

    :goto_4
    array-length v11, v7

    const/16 v12, 0x14

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-ge v9, v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v13, v7, v9

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v7, v9

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->i()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v10, "exec has self stack"

    invoke-static {v3, v10}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v0

    :cond_4
    aget-object v11, v7, v9

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int/2addr v11, v0

    if-eq v9, v11, :cond_5

    const-string v11, "\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    if-eqz v10, :cond_f

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->l()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_7

    goto/16 :goto_8

    :cond_7
    const-string v0, "android.intent.action.VIEW"

    :try_start_3
    aget-object v7, p6, v5

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    aget-object v0, p6, v5

    :goto_5
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :cond_8
    const-string v0, "android.intent.action.CHOOSER"

    :try_start_4
    aget-object v7, p6, v5

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    aget-object v0, p6, v5

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const-string v0, "unknown intent"

    goto :goto_6

    :cond_a
    const-string v0, "unknown bundle"

    goto :goto_6

    :cond_b
    const-string v0, "not supported action"

    :goto_6
    :try_start_5
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->b(Ljava/lang/String;)V

    if-eqz v2, :cond_c

    invoke-interface {v2}, Lcom/ubix/ssp/ad/e/a0/y/d/a;->b()Z

    move-result v7
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v7, :cond_d

    :try_start_6
    iget-object v8, v1, Lcom/ubix/ssp/ad/e/a0/y/d/b;->b:Ljava/lang/Object;

    if-nez v8, :cond_d

    iget-object v8, v1, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a:Landroid/app/Instrumentation;

    invoke-virtual {v1, v8}, Lcom/ubix/ssp/ad/e/a0/y/d/b;->findTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v1, Lcom/ubix/ssp/ad/e/a0/y/d/b;->b:Ljava/lang/Object;

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_9

    :cond_c
    move v7, v5

    :cond_d
    :goto_7
    if-eqz v2, :cond_e

    invoke-interface {v2, v0}, Lcom/ubix/ssp/ad/e/a0/y/d/a;->a(Ljava/lang/String;)V

    :cond_e
    const-string v0, "exec out"

    invoke-static {v3, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_a

    :cond_f
    :goto_8
    :try_start_7
    const-string v0, "exec no self stack or not deeplink"

    invoke-static {v3, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a()V

    if-nez p1, :cond_10

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a:Landroid/app/Instrumentation;

    aget-object v16, p6, v5

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v18, p8

    filled-new-array/range {v12 .. v18}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_3

    :cond_10
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a:Landroid/app/Instrumentation;

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p8

    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    return-object v4

    :goto_9
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->a()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    if-eqz v2, :cond_12

    invoke-interface {v2}, Lcom/ubix/ssp/ad/e/a0/y/d/a;->c()V

    :cond_12
    :goto_a
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoke def, deepSeek="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_14

    if-nez p1, :cond_13

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a:Landroid/app/Instrumentation;

    aget-object v16, p6, v5

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v18, p8

    filled-new-array/range {v12 .. v18}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation$ActivityResult;

    return-object v0

    :catch_4
    move-exception v0

    goto :goto_b

    :cond_13
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a:Landroid/app/Instrumentation;

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p8

    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_14
    if-nez p1, :cond_16

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/a0/y/d/b;->b:Ljava/lang/Object;

    if-nez v0, :cond_15

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a:Landroid/app/Instrumentation;

    :cond_15
    aget-object v16, p6, v5

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v18, p8

    filled-new-array/range {v12 .. v18}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation$ActivityResult;

    return-object v0

    :cond_16
    iget-object v0, v1, Lcom/ubix/ssp/ad/e/a0/y/d/b;->b:Ljava/lang/Object;

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a:Landroid/app/Instrumentation;

    :cond_17
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p8

    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    return-object v4

    :goto_b
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :goto_c
    if-eqz v2, :cond_18

    invoke-interface {v2}, Lcom/ubix/ssp/ad/e/a0/y/d/a;->c()V

    :cond_18
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private a(Ljava/lang/Object;ILjava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-lez p2, :cond_3

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, p2, -0x1

    invoke-direct {p0, v4, v5, p3}, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a(Ljava/lang/Object;ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    return-object v4

    :catch_0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 1

    .line 3
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/Object;ILjava/util/List;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v7, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, p2, -0x1

    invoke-direct {p0, v7, v8, p3}, Lcom/ubix/ssp/ad/e/a0/y/d/b;->b(Ljava/lang/Object;ILjava/util/List;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    return-object v7

    :catch_0
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a(ZLandroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    return-void
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 9

    filled-new-array {p5}, [Landroid/content/Intent;

    move-result-object v6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a(ZLandroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object p1

    return-object p1
.end method

.method public findTarget(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x5

    invoke-direct {p0, p1, v1, v0}, Lcom/ubix/ssp/ad/e/a0/y/d/b;->a(Ljava/lang/Object;ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v0}, Lcom/ubix/ssp/ad/e/a0/y/d/b;->b(Ljava/lang/Object;ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

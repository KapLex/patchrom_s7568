.class public Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;
.super Lcom/android/internal/policy/impl/KeyguardViewMediator;
.source "MiuiKeyguardViewMediator.java"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V
    .locals 5
    .parameter "context"
    .parameter "callback"
    .parameter "powerManager"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    .line 27
    new-instance v1, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator$1;-><init>(Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "miui.intent.action.ACTION_SHOW_LOCK_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 25
    return-void
.end method


# virtual methods
.method adjustStatusBarLocked()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 47
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_2

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, flags:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, -0x8000

    :goto_0
    or-int/2addr v0, v1

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/app/ExtraStatusBarManager;->isExpandableUnderKeyguard(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    const/high16 v1, 0x9

    or-int/2addr v0, v1

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 63
    .end local v0           #flags:I
    :cond_2
    return-void

    .line 54
    .restart local v0       #flags:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 2
    .parameter "why"

    .prologue
    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->notifyScreenOffLocked()V

    .line 38
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lmiui/net/FirewallManager;->removeAccessControlPass(Ljava/lang/String;)V

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 41
    return-void

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected playSounds(Z)V
    .locals 1
    .parameter "locked"

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sSuppressNextLockSound:Z

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->sSuppressNextLockSound:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->suppressNextLockSound()V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->playSounds(Z)V

    .line 72
    return-void
.end method

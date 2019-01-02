/************************************************************************

    mainwindow.h

    Capture application for the Domesday Duplicator
    DomesdayDuplicator - LaserDisc RF sampler
    Copyright (C) 2018 Simon Inns

    This file is part of Domesday Duplicator.

    Domesday Duplicator is free software: you can redistribute it and/or
    modify it under the terms of the GNU General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

    Email: simon.inns@gmail.com

************************************************************************/

#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QLabel>
#include <QDate>
#include <QTimer>
#include <QMessageBox>

#include "aboutdialog.h"
#include "configurationdialog.h"
#include "configuration.h"
#include "usbdevice.h"
#include "playercommunication.h"
#include "playercontrol.h"
#include "playerremotedialog.h"
#include "automaticcapturedialog.h"
#include "advancednamingdialog.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void deviceAttachedSignalHandler(void);
    void deviceDetachedSignalHandler(void);
    void configurationChangedSignalHandler(void);
    void remoteControlCommandSignalHandler(PlayerRemoteDialog::RemoteButtons button);
    void remoteControlSearchSignalHandler(qint32 position, PlayerRemoteDialog::PositionMode positionMode);
    void startAutomaticCaptureDialogSignalHandler(AutomaticCaptureDialog::CaptureType captureType,
                                                              qint32 startAddress, qint32 endAddress,
                                                              AutomaticCaptureDialog::DiscType discTypeParam);
    void stopAutomaticCaptureDialogSignalHandler(void);
    void updateAutomaticCaptureStatus(void);
    void automaticCaptureCompleteSignalHandler(bool success);

    void playerConnectedSignalHandler(void);
    void playerDisconnectedSignalHandler(void);

    void startCaptureSignalHandler(void);
    void stopCaptureSignalHandler(void);

    void updateCaptureStatistics(void);
    void updatePlayerControlInformation(void);
    void transferFailedSignalHandler(void);
    void updateCaptureDuration(void);
    void updateStorageInformation(void);

    void on_actionExit_triggered();
    void on_actionTest_mode_toggled(bool arg1);
    void on_actionAbout_triggered();
    void on_actionPreferences_triggered();
    void on_capturePushButton_clicked();
    void on_actionPlayer_remote_triggered();
    void on_actionAutomatic_capture_triggered();
    void on_limitDurationCheckBox_stateChanged(int arg1);
    void on_actionAdvanced_naming_triggered();

private:
    Configuration *configuration;
    UsbDevice *usbDevice;
    QLabel *usbStatusLabel;
    QStorageInfo *storageInfo;

    Ui::MainWindow *ui;
    AboutDialog *aboutDialog;
    AutomaticCaptureDialog *automaticCaptureDialog;
    ConfigurationDialog *configurationDialog;
    PlayerRemoteDialog *playerRemoteDialog;
    PlayerControl *playerControl;
    AdvancedNamingDialog *advancedNamingDialog;

    bool isCaptureRunning;
    QTimer *captureStatusUpdateTimer;
    QTimer *playerControlTimer;
    QTimer *automaticCaptureTimer;
    QTimer *captureDurationTimer;
    QTime captureElapsedTime;
    QTimer *storageInfoTimer;

    bool isPlayerConnected;

    // Remote control states
    PlayerCommunication::DisplayState remoteDisplayState;
    PlayerCommunication::AudioState remoteAudioState;
    qint32 remoteSpeed;
    PlayerCommunication::ChapterFrameMode remoteChapterFrameMode;

    void updateGuiForCaptureStart(void);
    void updateGuiForCaptureStop(void);
    void startPlayerControl(void);
    void updatePlayerRemoteDialog(void);
};

#endif // MAINWINDOW_H

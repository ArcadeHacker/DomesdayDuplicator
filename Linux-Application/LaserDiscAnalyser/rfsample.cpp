/************************************************************************

    rfsample.cpp

    RF Sample analyser for Domesday Duplicator
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


#include "rfsample.h"

RfSample::RfSample(QObject *parent) : QObject(parent)
{
    // Set default object values
    sizeOnDisc = 0;
    numberOfSamples = 0;
}

// Open the input RF sample
// Returns 'true' on success
bool RfSample::openInputSample(QString filename)
{
    // Open input sample file for reading
    inputSampleFileHandle = new QFile(filename);
    if (!inputSampleFileHandle->open(QIODevice::ReadOnly)) {
        // Failed to open input sample file
        qDebug() << "RfSample::openInputSample(): Could not open " << filename << "as input sample file";
        return false;
    }
    qDebug() << "RfSample::openInputSample(): Sample file is" << filename << "and is" << inputSampleFileHandle->size() << "bytes in length";

    // Determine the size on disc and number of samples (based on 10-bit packed data)
    sizeOnDisc = inputSampleFileHandle->size();
    numberOfSamples = (sizeOnDisc / 5) * 4;

    return true;
}

// Close the input RF sample
void RfSample::closeInputSample(void)
{
    // Is a sample file open?
    if (inputSampleFileHandle != nullptr) {
        qDebug() << "RfSample::closeInputSample(): Closing input sample file";
        inputSampleFileHandle->close();
    }

    // Clear the file handle pointer
    inputSampleFileHandle = nullptr;
}

// Open the output RF sample
// Returns 'true' on success
bool RfSample::openOutputSample(QString filename)
{
    // Open output sample file for writing
    outputSampleFileHandle = new QFile(filename);
    if (!outputSampleFileHandle->open(QIODevice::WriteOnly)) {
        // Failed to open output sample file
        qDebug() << "RfSample::openOutputSample(): Could not open " << filename << "as output sample file";
        return false;
    }
    qDebug() << "RfSample::openOutputSample(): Sample file is" << filename;

    return true;
}

// Close the output RF sample
void RfSample::closeOutputSample(void)
{
    // Is a sample file open?
    if (outputSampleFileHandle != nullptr) {
        qDebug() << "RfSample::closeOutputSample(): Closing output sample file";
        outputSampleFileHandle->close();
    }

    // Clear the file handle pointer
    outputSampleFileHandle = nullptr;
}

// Save a RF sample
bool RfSample::saveOutputSample(QString filename, QTime startTime, QTime endTime, bool isTenBit)
{
    qDebug() << "RfSample::saveOutputSample(): Saving output file as " << filename;
    if (isTenBit) qDebug() << "RfSample::saveOutputSample(): Saving in 10-bit format";
    else qDebug() << "RfSample::saveOutputSample(): Saving in 16-bit format";

    // To do!

    return true;
}

// Read the input sample data and unpack into a quint16 vector
QVector<quint16> RfSample::readInputSample(qint32 maximumSamples)
{
    QVector<quint16> sampleBuffer;
    sampleBuffer.resize(maximumSamples);

    return sampleBuffer;
}

// Write the output sample data from a quint16 vector
bool RfSample::writeOutputSample(QVector<quint16> sampleBuffer)
{
    return true;
}

// Get and set methods ------------------------------------------------------------------------------------------------

// Get the size of the sample file on disc and return as a
// readable string
QString RfSample::getSizeOnDisc(void)
{
    QString sizeText;

    if (sizeOnDisc < 102400) {
        sizeText = QString::number(sizeOnDisc) + " Bytes";
    } else if (sizeOnDisc < 1024 * 1024) {
        sizeText = QString::number(sizeOnDisc / 1024) + " KBytes";
    } else if (sizeOnDisc < 1024 * 1024 * 1024) {
        sizeText = QString::number(sizeOnDisc / 1024 / 1024) + " MBytes";
    } else {
        sizeText = QString::number(sizeOnDisc / 1024 / 1024 / 1024) + " GBytes";
    }

    return sizeText;
}

// Get the number of samples contained in the sample file
qint64 RfSample::getNumberOfSamples(void)
{
    return numberOfSamples;
}

// Get the approximate duration of the sample file and
// return it as the number of seconds
qint32 RfSample::getDurationSeconds(void)
{
    return static_cast<qint32>(numberOfSamples / 40000000);
}

// Get the approximate duration of the sample file and
// return it as a time string "hh:mm:ss"
QString RfSample::getDurationString(void)
{
    // Number of samples / 40 MSPS sampling rate
    qint64 duration = numberOfSamples / 40000000;

    // Return a QString in the format hh:mm:ss
    return QDateTime::fromTime_t(static_cast<quint32>(duration)).toUTC().toString("hh:mm:ss");
}

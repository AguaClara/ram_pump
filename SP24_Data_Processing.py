#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Processing Aguaclara Data
"""

import pandas as pd
import matplotlib.pyplot as plt


def filter_datalog(datalog):
    """

    Parameters
    ----------
    datalog : a data log from in pandas form

    Returns (as tuple)
    -------
    time :  numpy array of floats containing day fractions 
    pressure : numpy array of floats containing pressure measurements

    """
    datalog = datalog[datalog['Air Chamber (200 kPa) (cm)'] != "Air Chamber (200 kPa) (cm)"]
    datalog = datalog[datalog['Day fraction since midnight on 4/20/2024'] != 'Day fraction since midnight on 4/20/2024']
    datalog = datalog.astype(float)
    time = datalog['Day fraction since midnight on 4/20/2024']
    pressure = datalog['Air Chamber (200 kPa) (cm)']
    
    time = time.to_numpy(dtype = float)
    pressure = pressure.to_numpy(dtype = float)
    
    return (time, pressure)

# Array data is a nested array containing 1 array with the times at which
# the pump has pressure higher than 0, and an array containing corresponding 
# pressure values

def convert_dayfraction_to_seconds(timelist):
    """ 

    Parameters
    ----------
    timelist : list of day fractions
    Returns
    -------
    timelist : assumes that the first time in list is at 0 seconds;
    converts all day fractions into 'seconds' form, returns in list form

    """
    timelist = timelist*24*60*60 
    timelist = timelist - timelist[0]
    return timelist

def graph(time, pressure):
    time = convert_dayfraction_to_seconds(time)
    plt.xlabel('Time (s)')
    plt.ylabel('Height Pumped (cm)') 
    plt.plot(time, pressure) #', label = legend'
    
def graph_average(time, pressure, width, workinglength, thickness, legend):
    time = convert_dayfraction_to_seconds(time)
    pressure_average = 0
    for k in range(len(pressure)):
        pressure_average = pressure_average + pressure[k]
    pressure_average = pressure_average / len(pressure)
    plt.xlabel('Time (s)')
    plt.ylabel('Height Pumped (cm)') 
    plt.plot(time, pressure_average, label = legend)
    plt.legend()
